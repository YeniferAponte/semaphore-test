#!/bin/bash

echo "Loading AWS credentials from mounted file..."

export $(cat /aws.env | xargs)

echo "DEBUG:"
echo "AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID"
echo "AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION"

pip install awscli >/dev/null 2>&1 || true

echo "Checking AWS identity..."
aws sts get-caller-identity
