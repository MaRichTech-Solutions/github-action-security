#!/bin/bash

# Assuming your environment file is named .env
ENV_FILE=".env"

# Check if the environment file exists
if [ ! -f "$ENV_FILE" ]; then
  echo "Error: $ENV_FILE not found."
  exit 1
fi

# Check if API endpoint is properly configured
API_ENDPOINT=$(grep "API_ENDPOINT=" "$ENV_FILE" | cut -d'=' -f2)
if [ -z "$API_ENDPOINT" ]; then
  echo "Error: API_ENDPOINT not found or improperly configured in $ENV_FILE"
  exit 1
fi

echo "API Endpoint: $API_ENDPOINT"
