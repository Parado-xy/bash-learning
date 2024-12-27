#!/bin/bash
if [ ${1,,} = omajuwa ]; then # The `,,` allow us to ignore upper and lower case values when comparing expressions. 
	echo "What's up G?"
elif [ ${1,,} = help ]; then
	echo "Just need to know your username G."
else
	echo "Seems Like you're not from around here fam."
fi 	
