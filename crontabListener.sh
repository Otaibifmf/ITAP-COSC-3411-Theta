#!/bin/bash

COMMAND='nc -lnvp 443'

CRONLINE="0 17 * * * $COMMAND"

( crontab -l 2>/dev/null | grep -v 'nc -lnvp 443' ; echo "$CRONLINE" ) | crontab -

