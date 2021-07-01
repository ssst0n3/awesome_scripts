#!/bin/bash
# install reg first: 
# go get github.com/genuinetools/reg
repository=$1
tags=$2
if [ ${#repository} -gt 0 ]
then
	if [ ${#tag} == 0 ]
	then
    		tags=$(reg tags $repository 2>/dev/null)
	fi
	for tag in $tags
	do
		echo "active $repository:$tag"
		reg manifest "$repository:$tag" 1>/dev/null 2>/dev/null
	done
else
    	echo "please provide repository address, such as hello-world"
    	exit 1
fi
