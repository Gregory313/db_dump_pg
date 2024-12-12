# db_dump_pg
Script to dump all db from pg


crontab -e

0 8 1 * * /bin/bash /home/sammys/sc/dumpDb.sh >> /home/sammys/sc/backup.log 2>&1
