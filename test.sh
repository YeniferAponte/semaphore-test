#!/bin/sh

echo "Loading AWS credentials from /tmp/aws.env ..."

if [ -f /tmp/aws.env ]; then
  set -a
  . /tmp/aws.env
  set +a
else
  echo "ERROR: aws.env not found!"
  exit 1
fi

echo "AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION"

pip install awscli >/dev/null 2>&1 || true

echo "Checking AWS identity..."
aws sts get-caller-identity
``
