#!/bin/bash
# borrowed from https://www.docker.com/blog/gathering-lxc-docker-containers-metrics/
set -ex
CID=$1
TASKS=/sys/fs/cgroup/devices/docker/$CID*/tasks
PID=$(head -n 1 $TASKS)
mkdir -p /var/run/netns
ln -sf /proc/$PID/ns/net /var/run/netns/$CID
ip netns exec $CID netstat -anp
