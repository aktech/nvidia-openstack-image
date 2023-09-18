#!/bin/bash

set -ex

start=$(date +%s)

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

end=$(date +%s)
echo "Disk Image Builder Finished"
runtime=$((end-start))
echo "Time taken to Finish: $runtime"
