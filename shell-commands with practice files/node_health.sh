#!/bin/bash
#
###########################################################
#Author: Abhay Raj Singh Rathore
#
#This script helps us to get the mode health
#
#Version: v1
##########################################################

set -x # debug mode
set -e #exit the script when there is an error and dont run the next commands
set -o pipefail #it will check if the pipe command fail not only the last command

#set -exo pipeline -> another way of writing all commands in single line  but not recommended

df -h

free -m

nproc

ps -ef |grep amazon |awk -F" " '{print $2}'