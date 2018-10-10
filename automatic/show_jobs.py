from courseraresearchexports.exports import api
from datetime import date, datetime

def show_all_requests():
  """
    This method checks for requests issued in the same day and returns the list of requests if all are successful. 
    It may return an empty list if not all the requests of today are ready for download.
    Returned requests are request objects.
  """
  all_requests = api.get_all()

  for single_request in all_requests:
    print single_request.to_json()




def get_today_requests():
	all_requests = api.get_all()

	today_requests = []
	today_is = date.today()
	for single_request in all_requests:
	    created_at = date.fromtimestamp(single_request.to_json()['metadata']['createdAt'] / 1e3)
	    #print 'THE REQUEST WAS CREATED AT: ' + str(created_at) + ' AND TODAY IS: ' + str(today_is)
	    if today_is == created_at:
	    	print_list = []
	    	print_list += [single_request.to_json()['exportType']]
	    	print_list += [single_request.to_json()['status']]
	    	if single_request.to_json()['exportType'] == 'RESEARCH_EVENTING':
	    		print_list += [str(single_request.to_json()['interval'])]
	    	print_list += [str(datetime.fromtimestamp(single_request.to_json()['metadata']['createdAt'] / 1e3))]
	      	if single_request.to_json()['status'] == 'SUCCESSFUL' :
	      		print_list += [str(datetime.fromtimestamp(single_request.to_json()['metadata']['completedAt'] / 1e3))]

	      	print_list += [single_request.to_json()['id']]
	      	print print_list
	



#show_all_requests()
get_today_requests()