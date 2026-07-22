#!/bin/bash

######################
#  Author: Prasanna
#  Date: 22nd Jul
#  Version: v1
#
#  This script is about to track aws resource usage
######################

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users

set -x

# List available s3 buckets
aws s3 ls >> resourceTracker

# List available ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

# List available lambda functions
aws lambda list-functions >> resourceTracker

# List available IAM users
aws iam list-users >> resourceTracker
