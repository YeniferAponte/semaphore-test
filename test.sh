#!/bin/bash

echo "Checking environment variables..."

env | grep AWS

echo "Exporting AWS variables..."

export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
export AWS_DEFAULT_REGION=us-east-1

echo "Checking AWS identity..."
aws sts get-caller-identity
