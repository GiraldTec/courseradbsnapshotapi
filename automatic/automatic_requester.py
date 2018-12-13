from datetime import date, datetime, timedelta

import time
import sys
import os
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

CONFIG_JSON = tools.update_database_tables(TABLES_FILE, CONFIG_JSON)
CONFIG_JSON = tools.update_database_clickstream(CLICKSTREAM_FILES, CONFIG_JSON)

tools.update_jsonfile(RANGE_LAST,sys.argv[1],CONFIG_JSON)

# to run the script that refreshes the materialized views
# sudo -u www-data /srv/apps/coursera/venv/bin/python /srv/apps/coursera/code/manage.py refreshviews
# Only works in the server with the analytics API installed
# os.system('sudo -u www-data /srv/apps/coursera/venv/bin/python /srv/apps/coursera/code/manage.py refreshviews')