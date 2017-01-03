#### Dev setup 1 instance

hostip=$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4)
etcd0=172.31.26.54

docker rm -f etcd
docker run -d \
 -v $PWD/certs:/etc/ssl/certs \
 -p 4001:4001 -p 2380:2380 -p 2379:2379 \
 --name etcd quay.io/coreos/etcd etcd \
 -name etcd0 \
 -advertise-client-urls http://${hostip}:2379,http://${hostip}:4001 \
 -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 \
 -initial-advertise-peer-urls http://${hostip}:2380 \
 -listen-peer-urls http://0.0.0.0:2380 \
 -initial-cluster-token etcd-cluster-1 \
 -initial-cluster etcd0=http://${etcd0}:2380 \
 -initial-cluster-state new
