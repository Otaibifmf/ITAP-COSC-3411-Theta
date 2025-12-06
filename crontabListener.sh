#!/bin/bash

# Asks the user for a port number and store it into PORT
read -p "Enter port you would like to listen to? " PORT

# Asks the user for the minute field of the cron schedule
read -p "Minute (0-59): " MIN

# Asks the user for the hour field of the cron schedule
read -p "Hour: (0-23) " HOUR

# Asks the user for the day of the month field of the cron schedule
read -p "Day of Month: (1-31) " DOM

# Asks the user for the month field of the cron schedule
read -p "Month: (1-12) " MON

# Asks the user for the day of the week field of the cron schedule
read -p "Day of Week: (0-6) " DOW

# Stores the listening command into COMMAND
COMMAND="nc -lnvp $PORT"

# Store the full cron job using the schedule and command
CRONLINE="$MIN $HOUR $DOM $MON $DOW $COMMAND"

# Updating the crontab:
# 1. List all current crontab and do not return errors
# 2. Remove any existing lines that include 'nc -lnvp' (To avoid conflicting jobs)
# 3. Add the new cron job
# 4. Install the updated crontab
( crontab -l 2>/dev/null | grep -v 'nc -lnvp' ; echo "$CRONLINE" ) | crontab -

