#! /bin/bash

#=============================================================================
#
# Filename: install.sh
#
# Created by: Samuel Barton
#
# Description: This script handles installingg the fix-share program into 
#              the system.
#
#=============================================================================
if [ $UID -ne 0 ]
then
    echo "This must be run as root!"
    exit 1
fi

cp fix-share /usr/bin
cp fix-share.conf /etc/init
