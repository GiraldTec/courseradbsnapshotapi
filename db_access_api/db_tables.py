import psycopg2

def read():
    conn = psycopg2.connect("dbname=sep-user user=sep-user")
    cur = conn.cursor()

    cur.execute("select table_name from information_schema.tables where table_schema = 'public';")

    ret_list = cur.fetchall()

    cur.close()
    conn.close()

    return [pair[0] for pair in ret_list]


def singleTable(nombre):
    conn = psycopg2.connect("dbname=sep-user user=sep-user")
    cur = conn.cursor()

    cur.execute("select column_name,data_type from information_schema.columns where table_name = '"+nombre+"';")

    col_list = cur.fetchall()

    cur.execute("select * from "+nombre+";")

    aux_list = cur.fetchmany(500)

    cur.close()
    conn.close()

    ret_list = []

    for e in aux_list:
        ret_list += [create_dictionary(col_list,e)]
      

    return ret_list

def create_dictionary(keys_list, values_list):
    ret_dict = {}
       
    for i in range(len(keys_list)):
        ret_dict[keys_list[i][0]] = values_list[i]

    return ret_dict

def columnsTable(nombre):
    conn = psycopg2.connect("dbname=sep-user user=sep-user")
    cur = conn.cursor()
    
    cur.execute("select column_name,data_type from information_schema.columns where table_name = '"+nombre+"';")

    col_list = cur.fetchall()

    cur.close()
    conn.close()

    return [ c[0] for c in col_list]

def queryTables(cuerpo):
    conn = psycopg2.connect("dbname=sep-user user=sep-user")
    cur = conn.cursor()
    
    cur.execute(cuerpo.get('query'))

    ret_list = cur.fetchall()

    cur.close()
    conn.close()
    return ret_list

