#!/bin/bash
set -ex
echo "starting clean memory cache"
sync;sync;sync #write into disk to prevent data lost
sleep 10
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
