#!/bin/sh

# WARNING: it creates an empty file on your current directory

# contacts the DB and returns:
# 1 if the verdict is to update
# 0 if it should not update
function check_on_db() {
	# here you would check on db
	# but we return a random result 50-50
	return $(($RANDOM %2))
}

## main logic

#echo "$0 : making a call to db for target $1 ..."

if [ ! -f "$1" ]; then touch "$1"; echo update; fi

if check_on_db ; then
	echo dontupdate
else
	touch "$1" # <<< this will flag make to rebuid the target
	echo update
fi
