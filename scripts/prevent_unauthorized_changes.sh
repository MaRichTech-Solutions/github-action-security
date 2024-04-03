#!/bin/bash

# Assuming the modified file list is provided as arguments to the script
# For example, if you're using GitHub Actions, you can access the modified files like this:
# MODIFIED_FILES=$(git diff --name-only HEAD^ HEAD)

# Check if the environment file is modified
if echo "$MODIFIED_FILES" | grep -q "$ENV_FILE"; then
  echo "Error: Unauthorized changes detected in $ENV_FILE"
  exit 1
fi
