source $PWD/solo.sh
etcdctl -C http://${etcd0}:2379 member list
