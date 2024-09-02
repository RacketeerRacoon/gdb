#!/bin/bash

# Command line prompt is sudo ./.update.sh 
# Enter password when prompted


# Check for root or sudo privileges
if [[ ! $(id -u) -eq 0 ]]; then
    echo "This script requires root or sudo privileges."
    exit 1
fi

sudo apt update
sudo apt -y full-upgrade
sudo apt -y autoremove