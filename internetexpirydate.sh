#!/bin/bash

background_function() 
{
sleep 150
days=$(tail -n 1 /home/prakash/selfuniv/mylogs/internet_renew.log | cut -d':' -f 2 | python3 '/home/prakash/selfuniv/.myscripts/internetexpiry_python.py')
remaining=$(echo "30 - $days" | bc)
if [ $remaining -lt 1 ]
then
	gxmessage -name 'Internet Status' -center "Update internet recharge log."
elif [ $remaining -le 5 ]
then
	gxmessage -name 'Internet Status' -center "Internet service expires in $remaining day(s). Recharge soon!"
fi
}

background_function &
