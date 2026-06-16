#!/bin/sh

echo "Loading AWS credentials from /tmp/aws.env ..."

if [ ! -f /tmp/aws.env ]; then
  echo "ERROR: /tmp/aws.env not found"
  exit 1
fi

# Remove both hidden CR characters and literal \r text
sed 's/\\r//g; s/\r$//' /tmp/aws.env > /tmp/aws.clean.env

set -a
. /tmp/aws.clean.env
set +a

echo "AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION"

pip install awscli >/dev/null 2>&1 || true

echo "Checking AWS identity..."
aws sts get-caller-identity
