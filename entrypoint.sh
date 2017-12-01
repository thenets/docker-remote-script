#!/bin/bash

# Check if $SCRIPT_PATH exists
if [[ -z "${SCRIPT_PATH}" ]]; then
  echo "The SCRIPT_PATH doesn't exist! Please set this environment variable."
else
  # Start script
  curl -sSL $SCRIPT_PATH | sh
fi

echo "... done!"
