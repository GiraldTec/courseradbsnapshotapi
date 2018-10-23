#gunzip *.gz
psql -d $1 -1 -f setup_events.sql
#python load_events.py *.csv
#gzip *.csv
#mv *.csv $1
