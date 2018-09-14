import psycopg2

def read():
    conn = psycopg2.connect("dbname=test user=sep-user")
    cur = conn.cursor()

    cur.execute("select * from people;")

    ret_list = cur.fetchall()

    cur.close()
    conn.close()

    return [{"name":name,"surname":surname} for (_,name,surname) in ret_list]
