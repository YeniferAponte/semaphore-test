#!/bin/bash

apt update && apt install -y awscli

echo "Checking AWS identity..."
aws sts get-caller-identity
