FROM ubuntu:16.04

# Install upgrades
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get autoremove -y

# Install curl
RUN apt-get update && \
    apt-get install -y curl
    
# Check if $SCRIPT_PATH exists
if [[ -z "${SCRIPT_PATH}" ]]; then
  echo "The SCRIPT_PATH doesn't exist! Please set this environment variable."
else
  # Start script
  curl -sSL $SCRIPT_PATH | sh
fi
