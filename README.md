# Quick AWS etcd cluster bootstrap in bash

Ensure all steps are run as root.

Ensure you have docker installed (curl -sSL https://get.docker.com/ | sh).

## Cluster Setup:
```
1. Set the variables in variables.sh as required
2. Clone this repo onto each etcd instance
3. Put all TLS files (e.g. ca.pem, etcd-key.pem, etcd.pem) into Certs directory
4. Run etcd0.sh on first instance, etcd1.sh on 2nd instance and etcd2.sh on third instance.
5. Run check.sh to check the state of the cluster
```

### Notes 

In reality its best to adopt these scripts into your Terraform ec2 userdata templates

Tested on:
- CoreOS-stable-1185.5.0-hvm (ami-7ee7e169)
- etcd container version - latest (v3.0.15)
- Docker version 1.11.2, build bac3bae
