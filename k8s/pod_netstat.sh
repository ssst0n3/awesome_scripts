#!/bin/bash
set -ex
CID=$1
netns=`crictl inspectp $CID | jq -r '.info.runtimeSpec.linux.namespaces[] |select(.type=="network") | .path'`
nsenter --net=$netns netstat -anp