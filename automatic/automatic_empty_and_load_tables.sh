unzip $1 -d .
psql -d $3 -1 -f empty_tables.sql
psql -d $3 -1 -f load.sql
rm *.csv *html *.pdf load.sql setup.sql
mv $1 $2
