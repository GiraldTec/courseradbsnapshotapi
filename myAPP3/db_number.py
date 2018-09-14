import psycopg2

def read():
    conn = psycopg2.connect("dbname=sep-user user=sep-user")
    cur = conn.cursor()

    cur.execute("select count(eitdigital_user_id) from course_memberships where course_membership_role = 'BROWSER';")

    ret_list = cur.fetchall()

    cur.close()
    conn.close()

    return ret_list
