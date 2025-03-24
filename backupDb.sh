USER="root"
HOST="localhost"
PORT=5432
PASSWORD="pass" 
#sd
export PGPASSWORD=$PASSWORD

databases=$(psql -U $USER -h $HOST -p $PORT -d postgres -t -c "SELECT datname FROM pg_database WHERE datistemplate = false;")

for db in $databases; do
    echo "Making dump for : $db"
    pg_dump -U $USER -h $HOST -p $PORT -f "/tmp/${db}_dump.sql" $db
done

unset PGPASSWORD
