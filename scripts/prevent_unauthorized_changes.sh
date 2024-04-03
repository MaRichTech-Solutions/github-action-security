#!/bin/bash

# Assuming the environment file is named .env.prod
ENV_FILE=".env.prod"

# Check if the environment file exists
if [ ! -f "$ENV_FILE" ]; then
  echo "Error: $ENV_FILE found. You are not allowed to commit env files"
  exit 1
fi