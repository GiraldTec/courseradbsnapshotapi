
from datetime import date, datetime, timedelta
from courseraresearchexports.exports import api, utils
from courseraresearchexports.models import ExportRequest
from courseraresearchexports.constants.api_constants import ANONYMITY_LEVEL_COORDINATOR, EXPORT_TYPE_TABLES,EXPORT_TYPE_CLICKSTREAM, SCHEMA_NAMES

range_first = str(date.today() - timedelta(days=5))
range_last = str(date.today() - timedelta(days=1))

CLICKSTREAM_ISSUE_REQUEST = ExportRequest.ExportRequest(partner_id = 253, statement_of_purpose = "purpose_for_requests", export_type = EXPORT_TYPE_CLICKSTREAM, anonymity_level = ANONYMITY_LEVEL_COORDINATOR, interval= [range_first,range_last])


clickstream_response = api.post(CLICKSTREAM_ISSUE_REQUEST)
print 'THIS IS THE RESPONSE OF THE POST' + str(clickstream_response[0])
registered_clickstream_request = api.get(clickstream_response[0].to_json()["id"])
print 'THIS IS THE REGISTERED REQUEST ' + str(registered_clickstream_request[0])

