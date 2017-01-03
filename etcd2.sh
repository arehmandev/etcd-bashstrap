source $PWD/variables.sh

docker rm -f etcd
docker run -d \
 -v $PWD/certs:/etc/ssl/certs \
 -p 4001:4001 -p 2380:2380 -p 2379:2379 \
 --name etcd quay.io/coreos/etcd etcd \
 -name etcd2 \
 -advertise-client-urls http://${hostip}:2379,http://${hostip}:4001 \
 -listen-client-urls http://0.0.0.0:2379,http://0.0.0.0:4001 \
 -initial-advertise-peer-urls http://${hostip}:2380 \
 -listen-peer-urls http://0.0.0.0:2380 \
 -initial-cluster-token etcd-cluster-1 \
 -initial-cluster etcd0=http://${etcd0}:2380,etcd1=http://${etcd1}:2380,etcd2=http://${etcd2}:2380 \
 -initial-cluster-state new
