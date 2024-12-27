#!/bin/bash

showuptime(){
	local up=$(uptime -p | cut -c4-) # Declare as Local Variable
	local since=$(uptime -s) # Declare as Local Variable
	cat << EOF 
----
This machine has been up for ${up}
It has been running since ${since}
----
EOF
}
showuptime # Call the function
