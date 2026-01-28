#!/bin/bash
#
##################################################
#
# Author: Abhay Raj Singh Rathore
# Date: 28th Jan 2026
# Version: v1
#
# This script will report the AWS resource usage.
#
# ################################################
#
#set -x // Uncomment for debugging
#
# Resources that will be tracked:
# AWS S3
# AWS EC2
# AWS IAM
# AWS Lambda
#
# List S3 buckets
echo "Print list of S3 buckets"
aws s3 ls

#List ECC2 instances
echo "Print list of EC2 instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'
#jq command is used to parse JSON output, and [] is used to iterate through arrays as Reservations and Instances are arrays.

#List IAM users
echo "Print list of IAM users"
aws iam list-users

#List Lambda functions
echo "Print List of Lambda functions"
aws lambda list-functions