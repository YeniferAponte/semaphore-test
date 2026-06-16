#!/bin/bash

echo "Installing AWS CLI..."

pip install awscli

echo "Checking AWS identity..."

aws sts get-caller-identity
``
