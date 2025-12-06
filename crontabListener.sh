#!/bin/bash

read -p "Enter port you would like to listen to? " PORT
read -p "Minute (0-59): " MIN
read -p "Hour: (0-23) " HOUR
read -p "Day of Month: (1-31) " DOM
read -p "Month: (1-12) " MON
read -p "Day of Week: (0-6) " DOW

COMMAND="nc -lnvp $PORT"

CRONLINE="$MIN $HOUR $DOM $MON $DOW $COMMAND"

( crontab -l 2>/dev/null | grep -v 'nc -lnvp' ; echo "$CRONLINE" ) | crontab -

