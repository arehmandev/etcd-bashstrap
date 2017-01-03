# Used to get the private ip of your instance in AWS
hostip=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)

# Private IPs of etcd instances - change as required
etcd0=172.31.26.54
etcd1=172.31.38.239
etcd2=172.31.55.94
