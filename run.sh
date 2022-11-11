source .env
timestamp=$(date +%s)
OUTPUT_IMAGE=/home/ubuntu/ubuntu-nvidia-$timestamp

disk-image-create vm dhcp-all-interfaces \
  cloud-init-datasources cloud-init-config \
  dracut-regenerate growroot ubuntu \
  block-device-efi cuda \
  -o "$OUTPUT_IMAGE"
