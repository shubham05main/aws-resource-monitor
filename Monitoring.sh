#!/bin/bash

#####################
# Author - Shubham Prasar
# Date - 03-Aug/2025
# Version - V1
# This script will report the AWS resource usage and using crontab we will get report at specific time.
# Services are - AWS S3, AWS Lambda, AWS EC2, AWS IAM Users
# First basic project created after learning ShellScript
#####################

set -x #Debugging Mode

# List all the S3 bucket 
aws s3 ls > Resource_Tracker

# AWS lambda function
aws lambda list-functions | jq '.Functions[].FunctionName' >> Resource_Tracker

# List EC2 Instance
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> Resource_Tracker

# List IAM user
aws iam list-users | jq '.Users[].UserName' >> Resource_Tracker 

# Send email with the file content
mail -s "Daily AWS resource Report" shubham04@gamil.com < Resource_Tracker