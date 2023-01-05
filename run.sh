source .env
timestamp=$(date +%s)

if [[ -z "${LOG_TO_FILE}" ]]; then LOG_TO_FILE="--logfile dib.log"; fi
if [[ -z "${OUTPUT_IMAGE}" ]]; then OUTPUT_IMAGE="/home/runnerx/nvidia-openstack-image-$timestamp"; fi

echo "Starting Disk Image builder"
disk-image-create vm dhcp-all-interfaces \
  block-device-gpt ubuntu \
  cuda -x \
  misc \
  --no-tmpfs \
  -o "$OUTPUT_IMAGE"
echo "Starting Disk Image Finished"
