#!/bin/bash

# setup cron to run this script every 15 minutes.

CONTENTDIR=$(dirname "$0")
echo "CONTENT DIR: $CONTENTDIR"

cd $CONTENTDIR
gstatus=`git status --porcelain`

if [ ${#gstatus} -ne 0 ]
then

    git add --all
    git commit -m "$gstatus"

	git pull
    git push
 
fi