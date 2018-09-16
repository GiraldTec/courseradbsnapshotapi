# courseradbsnapshotapi
An API for a data access service for data retrieved from Coursera 

# Setting up the system

It's recommended to run the API using ***Python 2.7***
It's recommended to run the API using a ***VirtualEnv***
`pip install virtualenv`

For setting up the server, install ***Flask***
`pip install Flask`

For providing the API, install ***Conenxion***
`pip install connexion`

For accessing the database, install ***Psycopg2***
`pip install psycopg2`

For the time being, the database login credentials are defined in the file ***db_tables.py***

# Providing the API

To run the server and providing the API run the ***db_access_server.py*** script.
`python db_access_server.py`

# API methods

- ***/api/coursera/db_tables***
- ***/api/coursera/db_table/{*** name ***}***
- ***/api/coursera/db_table/{*** name ***}/columns***
- ***/api/coursera/query***
