# jk-hetzner-cloud-init
Initial Cloud configuration and init files for new Hetzner Linux Cloud Nodes

```[shell]
#cloud-config
locale: en_GB.UTF-8

runcmd:
  - "curl -s https://raw.githubusercontent.com/kuetemeier/jk-hetzner-cloud-init/master/init.sh | bash -s"
```
