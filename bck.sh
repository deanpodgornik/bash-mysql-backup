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
EXPORT_PREFIX='test_';
OLDER_THAN_DAYS=1;
#------------------

#RETRIEVE BACKUP FILE NAME
DATE=`date +%Y%m%d%H%M%S`;
EXPORT_FILENAME="$EXPORT_PREFIX$DATE.sql";

#retrieve the backup
mysqldump -u $USERNAME -p$PASSWORD $DATABASE -h $HOST > "$EXPORT_FOLDER/$EXPORT_FILENAME"

#delete the older backups
find $EXPORT_FOLDER/*.sql -mtime +$OLDER_THAN_DAYS -exec rm {} \;
