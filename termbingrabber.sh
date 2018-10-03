#!/bin/bash

link="http://termbin.com/$1"
if [ "$1" == "" ]
then
	echo "error occured: token not provided"
	exit 1
	#exit <status_code>
fi
if [ "$2" != "" ]
then
	curl -L "$link" > $2
else
	curl -L "$link"
fi
