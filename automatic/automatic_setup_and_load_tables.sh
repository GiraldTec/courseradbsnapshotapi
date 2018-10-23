echo 'Hola'
unzip $1 -d .
psql -1 -f setup_tables_unique.sql
psql -1 -f load.sql
rm *.csv *html *.pdf load.sql setup.sql
mv $1 $2
