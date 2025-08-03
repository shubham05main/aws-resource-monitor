# AWS Resource Monitoring Script

## Author
Shubham Prasar

## Date
03-Aug-2025

## Version
V1

#Pre-Requisite
To run this script first you have to run this command so that we can verify whether AWS CLI is installed or not AWS.
aws config(command)
it will ask for access key and secret access key(Both you will get it from MY_Profile--> Security_Credential)
Second thing you have to install mailutils by running this command inside your shell sudo apy update and sudo install mailutils-y
Keep in mind to run the sh file always have the +x to the sh file.( chmod +x <file_name.sh>)


## Overview
This bash script collects usage information of various AWS resources and outputs a report. It monitors the following AWS services:

- AWS S3 (lists all buckets)
- AWS Lambda (lists all functions)
- AWS EC2 (lists all instances)
- AWS IAM (lists all users)

The script is designed to be run on a schedule (e.g., via `cron`) to generate daily reports of your AWS resources.

## Usage

1. Make sure you have AWS CLI installed and configured with appropriate permissions.
2. Make sure you have `jq` installed for JSON parsing.
3. Make the script executable:

```bash
chmod +x aws_report.sh


#Additional Thing
If you want log script to a file and test the cron job manually
Do the below steps
crontab -e
    0 18 * * * /home/ubuntu/monitoring.sh >> /home/ubuntu/monitoring.log 2>&1
What does this do?
   >> /home/ubuntu/monitoring.log appends standard output (normal messages) to monitoring.log
   2>&1 sends error messages (stderr) to the same log file
Save and exit (in nano: Ctrl+O, Enter, Ctrl+X)
Run your script manually:
    /home/ubuntu/monitoring.sh >> /home/ubuntu/monitoring.log 2>&1
Then check the log content
    cat /home/ubuntu/monitoring.log
verify the cronjob 
    crontab -l



