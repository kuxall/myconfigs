#!/bin/bash

link="http://termbin.com/$1"
if [ "$2" != "" ]
then
	curl -L "$link" > $2
else
	curl -L "$link"
fi
