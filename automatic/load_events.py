import sys
import psycopg2

def load_events(list_of_events):

  conn = psycopg2.connect("dbname=sep-user user=sep-user")
  cur = conn.cursor()

  for event_file in list_of_events:
    print event_file
    cur.copy_expert("COPY clickstream_events FROM STDIN WITH CSV DELIMITER ',' QUOTE '\"' ESCAPE '\\'",open(event_file,'r'))
    conn.commit()

  cur.close()
  conn.close()
