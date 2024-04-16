#!/bin/bash

# Change to test, uat, prod etc
export stage=dev

# Should not need to change
export service=connectvoice

# Target AWS deployment region
export region=us-east-1

export AWS_REGION=$region

# Use named AWS profile unless it is specifically disabled
if [ -z "$DISABLE_AWS_PROFILE" ]; then
  export profile=duthiee1
  export AWS_PROFILE=$profile

  echo "Enabled AWS_PROFILE = $AWS_PROFILE"
fi

# AWS account number
export accountNumber=263358745544

# Whisper V3
export whisperEndPoint=huggingface-pytorch-inference-2024-04-05-01-59-08-855

# S3 bucket to upload deployment assets to
export deploymentBucket="${stage}-${service}-deployment-${accountNumber}"

echo "Exported $stage"
