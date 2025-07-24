#!/bin/bash

STAGE=$1
if [ -z "$STAGE" ]; then
  echo "Usage: ./scripts/deploy.sh <stage>"
  exit 1
fi

echo "Deploying stage: $STAGE"

# Go to terraform folder relative to this script location
cd "$(dirname "$0")/../terraform"

terraform init
terraform apply -auto-approve

PUBLIC_IP=$(terraform output -raw instance_public_ip)

echo "App deployed at: http://$PUBLIC_IP"
