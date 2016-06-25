#!/bin/sh

# with help from
# http://www.cyberciti.biz/tips/linux-upload-the-files-and-directory-tree-to-remote-ftp-server.html

HOST=$PHMS_HOST
USER=$PHMS_USER
PASSWD=$PHMS_PASSWORD
FILE=phms.ie
FTP_PATH=$PHMS_FTP_PATH

rm -r $FILE
mkdir $FILE
cp index.html $FILE
cp -r css $FILE
cp -r img $FILE

ncftpput -R -v -u $PHMS_USER -p $PHMS_PASSWD $PHMS_HOST $FTP_PATH $FILE
