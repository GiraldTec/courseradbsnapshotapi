

# It will wait until 3 am, just to be sure

# issue the requests, 

# success: memorize the id of the 2 requests

# Failure: log the wrong behaviour
# a missing request - try again every 10 minutes maximum until 10 times, then stop



# Check periodically untill those requests are all successful

# download the files,
# success: memorize the names of the files and update the table with the latest interval
# Failure: log the wrong behaviour and stop and delete all the downloaded documents


# Update database 

from datetime import date, datetime, timedelta

import time
import sys

import tools

#import logging
#logger = logging.getLogger()
#logger.disabled = True


if len(sys.argv) != 2:
	print 'Only one parameter required: the configuration JSON file'
	sys.exit()

CONFIG_JSON = tools.load_config_json(sys.argv[1])
print CONFIG_JSON


TABLES_REQUEST, CLICKSTREAM_REQUEST, RANGE_LAST = tools.issue_requests(CONFIG_JSON)

#print 'THIS IS THE RESULTING TABLE REQUEST: '+str(TABLES_REQUEST.to_json()['id'])
#print 'THIS IS THE RESULTING CLICKSTREAM REQUEST: '+str(CLICKSTREAM_REQUEST.to_json()['id'])

TABLES_FILE, CLICKSTREAM_FILES, CONFIG_JSON = tools.download_requests(TABLES_REQUEST, CLICKSTREAM_REQUEST, CONFIG_JSON)
#print 'THIS IS THE RESULTING FILE WITH TABLES: ' + str(TABLES_FILE)
#print 'THESE ARE THE RESULTING FILES OF EVENTS: ' + str(CLICKSTREAM_FILES)


#TABLES_FILE = ['eitdigital_1539088965232.zip']
CONFIG_JSON = tools.update_database_tables(TABLES_FILE, CONFIG_JSON)


#CLICKSTREAM_FILES= [u'./access-2018-08-29.csv.gz', u'./video-2018-08-29.csv.gz', u'./access-2018-08-30.csv.gz', u'./video-2018-08-30.csv.gz', u'./access-2018-08-31.csv.gz', u'./video-2018-08-31.csv.gz', u'./access-2018-09-01.csv.gz', u'./video-2018-09-01.csv.gz', u'./access-2018-09-02.csv.gz', u'./video-2018-09-02.csv.gz', u'./access-2018-09-03.csv.gz', u'./video-2018-09-03.csv.gz', u'./access-2018-09-04.csv.gz', u'./video-2018-09-04.csv.gz', u'./access-2018-09-05.csv.gz', u'./video-2018-09-05.csv.gz', u'./access-2018-09-06.csv.gz', u'./video-2018-09-06.csv.gz', u'./access-2018-09-07.csv.gz', u'./video-2018-09-07.csv.gz', u'./access-2018-09-08.csv.gz', u'./video-2018-09-08.csv.gz', u'./access-2018-09-09.csv.gz', u'./video-2018-09-09.csv.gz', u'./access-2018-09-10.csv.gz', u'./video-2018-09-10.csv.gz', u'./access-2018-09-11.csv.gz', u'./video-2018-09-11.csv.gz', u'./access-2018-09-12.csv.gz', u'./video-2018-09-12.csv.gz', u'./access-2018-09-13.csv.gz', u'./video-2018-09-13.csv.gz', u'./access-2018-09-14.csv.gz', u'./video-2018-09-14.csv.gz', u'./access-2018-09-15.csv.gz', u'./video-2018-09-15.csv.gz', u'./access-2018-09-16.csv.gz', u'./video-2018-09-16.csv.gz', u'./access-2018-09-17.csv.gz', u'./video-2018-09-17.csv.gz', u'./access-2018-09-18.csv.gz', u'./video-2018-09-18.csv.gz', u'./access-2018-09-19.csv.gz', u'./video-2018-09-19.csv.gz', u'./access-2018-09-20.csv.gz', u'./video-2018-09-20.csv.gz', u'./access-2018-09-21.csv.gz', u'./video-2018-09-21.csv.gz', u'./access-2018-09-22.csv.gz', u'./video-2018-09-22.csv.gz', u'./access-2018-09-23.csv.gz', u'./video-2018-09-23.csv.gz', u'./access-2018-09-24.csv.gz', u'./video-2018-09-24.csv.gz', u'./access-2018-09-25.csv.gz', u'./video-2018-09-25.csv.gz', u'./access-2018-09-26.csv.gz', u'./video-2018-09-26.csv.gz', u'./access-2018-09-27.csv.gz', u'./video-2018-09-27.csv.gz', u'./access-2018-09-28.csv.gz', u'./video-2018-09-28.csv.gz', u'./access-2018-09-29.csv.gz', u'./video-2018-09-29.csv.gz', u'./access-2018-09-30.csv.gz', u'./video-2018-09-30.csv.gz', u'./access-2018-10-01.csv.gz', u'./video-2018-10-01.csv.gz', u'./access-2018-10-02.csv.gz', u'./video-2018-10-02.csv.gz', u'./access-2018-10-03.csv.gz', u'./video-2018-10-03.csv.gz', u'./access-2018-10-04.csv.gz', u'./video-2018-10-04.csv.gz', u'./access-2018-10-05.csv.gz', u'./video-2018-10-05.csv.gz', u'./access-2018-10-06.csv.gz', u'./video-2018-10-06.csv.gz', u'./access-2018-10-07.csv.gz', u'./video-2018-10-07.csv.gz', u'./access-2018-10-08.csv.gz', u'./video-2018-10-08.csv.gz']


CONFIG_JSON = tools.update_database_clickstream(CLICKSTREAM_FILES, CONFIG_JSON)

tools.update_jsonfile(RANGE_LAST,sys.argv[1],CONFIG_JSON)

'''
STATE = 0
TODAY = date.today()
LAST_WEEK = date.today() - timedelta(days=7)

RETRIEVAL_TIME_HOUR = 11
RETRIEVAL_TIME_MINUTE = 0
RETRIEVAL_TIME_SECOND = 0


CURRENT_TIME = datetime.today()



print 'TABLES_REQUEST'
print TABLES_REQUEST
print ''
print 'CLICKSTREAM_REQUEST'
print CLICKSTREAM_REQUEST
print ''

TABLES_RESPONSE = []
CLICKSTREAM_RESPONSE = []

TABLES_REQUEST_ID =-1
CLICKSTREAM_REQUEST_ID =-1

SECONDS_PER_HOUR = 3600


while(True):

	if STATE == 0:
		#tomorrow_request_time = date.today() + timedelta(days=1)
		tomorrow_request_time = tomorrow_request_time.replace(hour = config_json['retrieval_time_hour'], minute= config_json['retrieval_time_minute'], second = 0)
		tomorrow_request_time = datetime.today() + timedelta(minutes=1)
		
		print tomorrow_request_time

		diff_time = tomorrow_request_time - datetime.today()

		time.sleep(diff_time.seconds)
		print "finished wating for issuing the requests"
		STATE = 1
	elif STATE ==1:

		#before even trying, we must check if there is a request for the tables for TODAY and if it matches with our needs
		todays_requests = get_todays_requests()
		todays_valid_request = constains_similar_request(todays_requests, TABLES_REQUEST)
		if todays_valid_request != Null:
			# We can assume that its fine, we can proceed
			print "Existing valid Tables request"
			print todays_valid_request
			TABLES_REQUEST_ID = todays_valid_request.to_json()["id"]
			STATE = 2
		else:
			try:
				TABLES_RESPONSE += api.post(tables_request)
				print TABLES_RESPONSE
				print "Successfully reqested tables"
				TABLES_REQUEST_ID = TABLES_RESPONSE.to_json()["id"]
				STATE = 2
			except:
				# Most likely there is already an existing request for the tables
				# However, we wait for a while and we will try again
				print "ERROR: error in the tables request, " + sys.exc_info()[0]
				time.sleep(SECONDS_PER_HOUR)
			
	elif STATE ==2:


		time.sleep(5)
		print "STATE 2"
		STATE = 3
	elif STATE ==3:
		time.sleep(5)
		print "STATE 3"
		STATE = 4
	elif STATE ==4:
		time.sleep(5)
		print "STATE 4"
		STATE = 5
	elif STATE ==5:
		time.sleep(5)
		print "STATE 5"
		STATE = 6
	elif STATE ==6:
		time.sleep(5)
		print "STATE 6"
		STATE = 7
	elif STATE ==7:
		time.sleep(5)
		print "STATE 7"
		STATE = 8
	elif STATE ==8:
		time.sleep(5)
		print "STATE 8"
		STATE = 0

	
'''
