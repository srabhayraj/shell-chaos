#!/bin/bash
##################################################
# Author: Abhay Raj Singh Rathore
# Date: 28th Jan 2026
# Version: v2
#
# Script to report AWS resource usage
##################################################

# Exit immediately if a command fails
set -e

# Log file
LOG_FILE="/home/ubuntu/aws_usage.log"

echo "===================================" >> $LOG_FILE
echo "AWS Resource Report - $(date)" >> $LOG_FILE
echo "===================================" >> $LOG_FILE

# Check dependencies
command -v aws >/dev/null 2>&1 || { echo "AWS CLI not installed" >> $LOG_FILE; exit 1; }
command -v jq >/dev/null 2>&1 || { echo "jq not installed" >> $LOG_FILE; exit 1; }

# List S3 Buckets
echo "S3 Buckets:" >> $LOG_FILE
aws s3 ls >> $LOG_FILE

# List EC2 Instances
echo -e "\nEC2 Instance IDs:" >> $LOG_FILE
aws ec2 describe-instances \
  | jq -r '.Reservations[].Instances[].InstanceId' >> $LOG_FILE

# List IAM Users
echo -e "\nIAM Users:" >> $LOG_FILE
aws iam list-users \
  | jq -r '.Users[].UserName' >> $LOG_FILE

# List Lambda Functions
echo -e "\nLambda Functions:" >> $LOG_FILE
aws lambda list-functions \
  | jq -r '.Functions[].FunctionName' >> $LOG_FILE

echo "Report completed successfully" >> $LOG_FILE
