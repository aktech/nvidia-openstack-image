## Nvidia Images for OpenStack


### Upload to OpenStack

```bash
openstack image create ubuntu-2204-nvidia-docker \
  --public --disk-format qcow2 \
  --container-format bare \
  --file ubuntu-2204-nvidia-docker.qcow2
```
