## Nvidia Images for OpenStack

Creates Ubuntu VM Image with following things installed:

- nvidia drivers
- docker

This uploads the created image to GCS bucket.

### Add Image to OpenStack

```bash
openstack image create ubuntu-2204-nvidia-docker \
  --public --disk-format qcow2 \
  --container-format bare \
  --file <created-image>.qcow2
```
