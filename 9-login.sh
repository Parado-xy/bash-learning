#!/bin/bash

case ${1,,} in 
	omajuwa | administrator) # Check if the argument matches the user name or is administrator. 
		echo "What's up G?"
		;; # Close this Option.

	help)
		echo "Just need to know your username G."
		;; # Close this Option

	*) # Matches every other thing (Wild Card).
		echo "Seems Like we're not too close Fam."
		
esac # Close the case statement with `esac` whis is case spelled backwards. 
