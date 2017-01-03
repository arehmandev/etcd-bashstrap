# Quick AWS etcd cluster bootstrap in bash

Ensure all steps are run as root.
Ensure you have docker installed (curl -sSL https://get.docker.com/ | sh)

## Cluster Setup:
```
1. Set the variables in variables.sh as required
2. Clone this repo onto each etcd instance
3. Put all TLS files (including ca.pem) into Certs directory
4. Run etcd0.sh on first instance, etcd1.sh on 2nd instance and etcd2.sh on third instance.
5. Run check.sh to check the state of the cluster
```

### Note: 
- In reality its best to adopt these scripts into your Terraform ec2 userdata templates
