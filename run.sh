#!/bin/bash

set -ex

source .env
timestamp=$(date +%s)
OUTPUT_IMAGE=/opt/stack/ubuntu-nvidia-$timestamp

if [[ -z "${LOG_TO_FILE}" ]]; then LOG_TO_FILE="--logfile dib.log"; fi

echo "Starting Disk Image builder"
disk-image-create vm dhcp-all-interfaces \
  block-device-gpt ubuntu \
  cuda -x \
  misc \
  --no-tmpfs \
  -o "$OUTPUT_IMAGE $LOG_TO_FILE"
echo "Disk Image Builder Finished"
