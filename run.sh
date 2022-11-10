OUTPUT_IMAGE=/home/diskimage-builder/ubuntu-nvidia

disk-image-create vm dhcp-all-interfaces \
  cloud-init-datasources cloud-init-config \
  dracut-regenerate growroot ubuntu \
  block-device-efi mofed cuda \
  -o $OUTPUT_IMAGE
