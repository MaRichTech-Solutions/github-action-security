#!/bin/bash

# Get the list of modified files
MODIFIED_FILES=$(git diff --name-only HEAD^ HEAD)

# Check if the environment file (.env) is modified
if echo "$MODIFIED_FILES" | grep -q "\.env$"; then
  echo "Error: Unauthorized changes detected in .env file"
  exit 1
fi
