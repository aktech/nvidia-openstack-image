## Nvidia Images for OpenStack


### Upload to OpenStack

```bash
openstack image create ubuntu-nvidia \
  --public --disk-format qcow2 \
  --container-format bare \
  --file ubuntu-nvidia.qcow2
```
