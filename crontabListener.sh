#!/bin/bash

read -p "Enter port you would like to listen to? " PORT


COMMAND="nc -lnvp $PORT"

CRONLINE="0 17 * * * $COMMAND"

( crontab -l 2>/dev/null | grep -v 'nc -lnvp' ; echo "$CRONLINE" ) | crontab -

