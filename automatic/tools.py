import json
import sys
import time
import os
import psycopg2
from datetime import date, datetime, timedelta
from courseraresearchexports.models import ExportRequest
from courseraresearchexports.exports import api, utils

from courseraresearchexports.constants.api_constants import ANONYMITY_LEVEL_COORDINATOR, EXPORT_TYPE_TABLES,EXPORT_TYPE_CLICKSTREAM, SCHEMA_NAMES


def load_config_json(file_name):
	try:
		config_json_file = open(file_name, 'r')
		try:
			config_json = json.load(config_json_file)
		except:
			print 'ERROR LOADING CONFIGURATION JSON'
			sys.exit()

		config_json_file.close()
		return config_json

	except:
		print 'ERROR OPENING FILE'
		sys.exit()


def get_table_request(today_requests, tab_req):
	if today_requests==[]:
		return None
	else:
		for r in today_requests:
			#print 'THIS IS THE EXISTING TABLE REQUEST: ' +str(r.to_json())
			#print 'THIS IS THE DESIRED TABLE REQUEST: ' +str(tab_req.to_json())
			if r.to_json()['exportType'] == tab_req.to_json()['exportType'] and r.to_json()['anonymityLevel'] == tab_req.to_json()['anonymityLevel'] and sorted(r.to_json()['schemaNames']) == sorted(tab_req.to_json()['schemaNames']) and  sorted(r.to_json()['scope'].items()) == sorted(tab_req.to_json()['scope'].items()):
				print 'WE FOUND A MATCH!'
				return r
		print 'No similar table request'
		return None


def get_clickstream_request(today_requests, click_req):
	print "ENTERING METHOD: get_clickstream_request"
	if today_requests==[]:
		return None
	else:
		for r in today_requests:
			if r.to_json()['exportType'] == click_req.to_json()['exportType'] and r.to_json()['anonymityLevel'] == click_req.to_json()['anonymityLevel'] and sorted(r.to_json()['scope'].items()) == sorted(click_req.to_json()['scope'].items()) and sorted(r.to_json()['interval'].items()) == sorted(click_req.to_json()['interval'].items()):
				print 'WE FOUND A MATCH!'
				return r
		print 'No similar clickstream request'
		return None

def get_today_requests():
	print "ENTERING METHOD: get_today_requests"
	all_requests = api.get_all()
	print all_requests
	today_requests = []
	today_is = date.today()
	for single_request in all_requests:
	    created_at = date.fromtimestamp(single_request.to_json()['metadata']['createdAt'] / 1e3)
	    #print 'THE REQUEST WAS CREATED AT: ' + str(created_at) + ' AND TODAY IS: ' + str(today_is)
	    if today_is == created_at:
	      today_requests += [single_request]
	return today_requests

def get_from_todays(tab_req, click_req):
	print "ENTERING METHOD: get_from_todays"
	
	today_requests = get_today_requests()
	#print today_requests
	return_tab_req = get_table_request(today_requests, tab_req)	
	return_clickstream_req = get_clickstream_request(today_requests, click_req)	

	return return_tab_req, return_clickstream_req
'''
def get_latest_table_request():
	print "ENTERING METHOD: get_latest_table_request"
	today_requests = get_today_requests()
	latest = None
	for r in today_requests:
		if r.to_json()['exportType'] == 'RESEARCH_WITH_SCHEMAS':
			latest = r
			break
	return latest
'''

def issue_requests(config_json):

	range_first = config_json["fist_clickstream_date"] if config_json["first_time"]=="yes" else config_json["last_clickstream_date"]
	range_last = str(date.today() - timedelta(days=1)) if datetime.today().hour > 3 else str(date.today() - timedelta(days=2))

	print (range_first, range_last)


	TABLES_ISSUE_REQUEST = ExportRequest.ExportRequest(partner_id = int(config_json["eit_digital_id"]), statement_of_purpose = config_json["purpose_for_requests"] + config_json["tables_purpose"], export_type = EXPORT_TYPE_TABLES, anonymity_level = ANONYMITY_LEVEL_COORDINATOR, schema_names = SCHEMA_NAMES)
	CLICKSTREAM_ISSUE_REQUEST = ExportRequest.ExportRequest(partner_id = int(config_json["eit_digital_id"]), statement_of_purpose = config_json["purpose_for_requests"] + config_json["clickstream_purpose"], export_type = EXPORT_TYPE_CLICKSTREAM, anonymity_level = ANONYMITY_LEVEL_COORDINATOR, interval= [range_first,range_last])

	registered_tables_request = None
	registered_clickstream_request = None
	exit_with_error = False
	error_message = 'Error requesting the '

	registered_tables_request, registered_clickstream_request = get_from_todays(TABLES_ISSUE_REQUEST,CLICKSTREAM_ISSUE_REQUEST)
	print registered_tables_request, registered_clickstream_request 


	while(registered_tables_request==None or registered_clickstream_request==None):
		try:
			# try to get the table request
			# table_request_id
			if registered_tables_request==None:
				print 'TIME TO REQUEST TABLES'
				tables_response = api.post(TABLES_ISSUE_REQUEST)
				print 'THIS IS THE RESPONSE OF THE TABLE-POST' + str(tables_response[0])
				registered_tables_request = api.get(tables_response[0].to_json()["id"])[0]
				print 'THIS IS THE REGISTERED TABLE-REQUEST ' + str(registered_tables_request)

		except Exception as e:
			print 'THIS IS THE MESSAGE: '
			print e.message
			print 'THAT WAS THE MESSAGE'
			if int(str(e.message.split(' ')[0])) != 429 :
				#time to wait
				#print e.message
				#print 'TIME TO WAIT for the latest request! ' + str(datetime.fromtimestamp(get_latest_table_request().to_json()['metadata']['startedAt']/ 1e3))
				#print 'MIGHT NEED TO WAIT UNTIL: ' + str(datetime.fromtimestamp(get_latest_table_request().to_json()['metadata']['startedAt']/ 1e3) + timedelta(hours=1))
				#print 'ONLY ' + str((datetime.fromtimestamp(get_latest_table_request().to_json()['metadata']['startedAt']/ 1e3) + timedelta(hours=1) - datetime.today()).seconds)
				exit_with_error = True
				error_message += 'tables: ' + e.message
				break
			else:
				print 'YOU NEED TO WAIT FOR TABLES'


		try:
			# try to get the clickstream request
			if registered_clickstream_request==None:
				print 'ABOUT TO REQUEST CLICKSTREAM'
				print str(CLICKSTREAM_ISSUE_REQUEST.to_json())
				clickstream_response = api.post(CLICKSTREAM_ISSUE_REQUEST)
				print 'THIS IS THE RESPONSE OF THE CLICKSTREAM-POST: ' + str(clickstream_response)
				print 'THIS IS THE RESPONSE OF THE CLICKSTREAM-POST: ' + str(clickstream_response[0])
				print type(clickstream_response[0])
				registered_clickstream_request = api.get(clickstream_response[0].to_json()["id"])[0]
				print 'THIS IS THE REGISTERED CLICKSTREAM-REQUEST ' + str(registered_clickstream_request)
		except Exception as e:
			print 'THIS IS THE MESSAGE: '
			print e.message
			print 'THAT WAS THE MESSAGE: '
			if int(e.message.split(' ')[0]) != 429:
				exit_with_error = True
				error_message += 'clickstream: ' + e.message
				break
			else:
				print 'YOU NEED TO WAIT FOR EVENTS'

		#wait for the necessary time
		print registered_tables_request,registered_clickstream_request
		if (registered_tables_request==None or registered_clickstream_request==None):
			time.sleep(60)

	if exit_with_error :
		print error_message
		sys.exit()
	else:
		return registered_tables_request, registered_clickstream_request, range_last


def download_requests(tables_request, clickstream_request, config_json):
	print 'ENTERING METHOD DOWNLOAD REQUEST'
	downloaded_tables = False
	downloaded_clickstream = False
	exit_with_error = False
	error_message = 'Error downloading the '
	table_file = ''
	clickstream_files = []

	tables_registered_req = None
	clickstream_registered_req = None

	while (not downloaded_tables or not downloaded_clickstream):
		
		if not downloaded_tables:

			try:
				print type(tables_request)
				print type(tables_request.to_json())
				tables_registered_req = api.get(tables_request.to_json()['id'])
			except Exception as e:
				print e.message
				exit_with_error = True
				error_message += 'tables, at updating request'
				break

			if tables_registered_req[0].to_json()['status'] == 'SUCCESSFUL':
				try:
					# try to download the table request
					table_file = utils.download(tables_registered_req[0],config_json['initial_download_location'])
					downloaded_tables = True
					
				except Exception as e:
					exit_with_error = True
					error_message += 'tables'
					break
			else:
				print 'MUST WAIT FOR THE TABLES'

		if not downloaded_clickstream:
			
			try:
				clickstream_registered_req = api.get(clickstream_request.to_json()['id'])
			except:
				exit_with_error = True
				error_message += 'tables, at updating request'
				break
			print str(clickstream_registered_req)
		
			if clickstream_registered_req[0].to_json()['status'] == 'SUCCESSFUL':
				try:
					# try to download the clickstream request
					clickstream_files = utils.download(clickstream_registered_req[0],config_json['initial_download_location'])
					downloaded_clickstream = True
				except Exception as e:
					exit_with_error = True
					error_message += 'clickstream, at downloading'
					break
			else:
				print 'MUST WAIT FOR THE CLICKSTREAM'

		#wait for the necessary time
		if (not downloaded_tables or not downloaded_clickstream):
			time.sleep(60)

	if exit_with_error :
		print error_message
		sys.exit()
	else:
		return table_file, clickstream_files, config_json



def update_database_tables(tables_file, config_json):
	print os.getcwd()
	try:
		command = './automatic_setup_and_load_tables.sh '+ tables_file[0].split('/')[-1] +  ' ' + config_json['table_export_location']
		print command
		os.system(command)
		# try to run the setup_and_load.sh
	except Exception as e:
		print "error at setting up and loading the database TABLES"
		sys.exit()

	# config_json is updated?
	return config_json

def load_events(list_of_event_files):
	conn = psycopg2.connect("dbname=sep-user user=sep-user")
	cur = conn.cursor()

	for event_file in list_of_event_files:
		print event_file[:-3]
		cur.copy_expert("COPY clickstream_events FROM STDIN WITH CSV DELIMITER ',' QUOTE '\"' ESCAPE '\\'",open(event_file[:-3],'r'))
		conn.commit()

	cur.close()
	conn.close()


def update_database_clickstream(clickstream_files, config_json):
	try:
		# try to run the setup_and_load.sh
		if config_json['first_time']=='yes':
			print 'ITS THE FIRST TIME!'
			command = './setup_events.sh'
			print command
			os.system(command)
			config_json['first_time']='no'
		if config_json['first_time']=='no':

			os.system('gunzip *.gz')
			print clickstream_files
			load_events(clickstream_files)
			os.system('gzip *.csv')
			os.system('mv *.gz '+ config_json['clickstream_export_location'])

	except Exception as e:
		print "error at setting up and loading the database CLICKSTREAM"
		sys.exit()

	# config_json is updated?
	return config_json


def update_jsonfile(range_last, file_name, config_json):
	print file_name
	config_json['last_clickstream_date'] = range_last
	config_json['first_time'] = 'no'
	aux = open(file_name,'w+')
	json.dump(config_json, aux)
	#aux.write(str(config_json))
	aux.close()
