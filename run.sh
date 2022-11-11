source .env
timestamp=$(date +%s)
OUTPUT_IMAGE=/home/ubuntu/ubuntu-nvidia-$timestamp

disk-image-create vm dhcp-all-interfaces \
  block-device-gpt ubuntu \
  cuda -x \
  --no-tmpfs \
  --logfile dib.log \
  -o "$OUTPUT_IMAGE"
