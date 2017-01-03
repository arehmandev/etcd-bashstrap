source $PWD/variables.sh
etcdctl -C http://${etcd0}:2379,http://${etcd1}:2379,http://${etcd2}:2379 member list
