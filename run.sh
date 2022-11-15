source .env
timestamp=$(date +%s)

#if [[ -z "${SET_LOGGING}" ]]; then SET_LOGGING="--logfile dib.log"; fi
if [[ -z "${OUTPUT_IMAGE}" ]]; then OUTPUT_IMAGE="/home/ubuntu/ubuntu-nvidia-$timestamp"; fi

disk-image-create vm dhcp-all-interfaces \
  block-device-gpt ubuntu \
  cuda -x \
  --no-tmpfs \
  -o "$OUTPUT_IMAGE"
