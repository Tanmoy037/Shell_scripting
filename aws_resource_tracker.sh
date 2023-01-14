#!/bin/bash

##############

# Author: Abhishek
# Date: 11th-jan
#
# Version: v1
#
# This script will report the AWS resource usage
##############

set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

# list s3 bucket
echo "Print list of s3 buckets"

aws s3 ls > resourceTracker

# list EC2 instance
echo "Print list of EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'  >> resourceTracker


# list Lambda functions
echo "Print list of lambda functions"
aws lambda list-functions >> resourceTracker


# list IAM users
echo "Print list of IAM Users"
aws iam list-users >> resourceTracker




