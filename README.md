# AWS Resource Monitoring Script

## Author
Shubham Prasar

## Date
03-Aug-2025

## Version
V1

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

