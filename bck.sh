#!/bin/bash

#------------------
#DB INFO
#------------------
USERNAME='root';
PASSWORD='test';
DATABASE='test';
HOST='localhost';
#------------------
#FILESYSTEM INFO
#------------------
EXPORT_FOLDER='./bck';
EXPORT_PREFIX='test';
OLDER_THAN_DAYS=1;
#------------------


#retrieve the backup
mysqldump -u $USERNAME -p$PASSWORD $DATABASE -h $HOST > "$EXPORT_FOLDER/$EXPORT_PREFIX.sql"

#delete the older backups
find $EXPORT_FOLDER/*.sql -mtime +$OLDER_THAN_DAYS -exec rm {} \;
