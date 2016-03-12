# bash-mysql-backup
A simple bash script for backing up your mysql database. You can define the following parameters:

username of the database user
```javascript
USERNAME='root';
```
password of the database user
```javascript
PASSWORD='test';
```
database name
```javascript
DATABASE='test';
```
database address
```javascript
HOST='localhost';
```  
the location (relative), where the back up wil be putted
```javascript
EXPORT_FOLDER='./bck';
```
the prefix of the backup that will be created
```javascript
EXPORT_PREFIX='test_';
```
Number of day, after the newly created backup will be deleted. In fact, when the backup process is completed, the script will check if in the specified folder (EXPORT_FOLDER) are located an "old" backup-s that needs to be deleted
```javascript
OLDER_THAN_DAYS=1;
```
