

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

TABLES_FILE, CLICKSTREAM_FILES, CONFIG_JSON = tools.download_requests(TABLES_REQUEST, CLICKSTREAM_REQUEST, CONFIG_JSON)

#CONFIG_JSON = tools.update_database_tables(TABLES_FILE, CONFIG_JSON)
#CONFIG_JSON = tools.update_database_clickstream(CLICKSTREAM_FILES, CONFIG_JSON)

#tools.update_jsonfile(RANGE_LAST,sys.argv[1],CONFIG_JSON)

# to run the script that refreshes the materialized views
# sudo -u www-data /srv/apps/coursera/venv/bin/python /srv/apps/coursera/code/manage.py refreshviews
