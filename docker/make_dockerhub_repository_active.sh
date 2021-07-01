#!/bin/bash
# install reg first: 
# go get github.com/genuinetools/reg

function usage() 
{
	echo "make_dockerhub_repository_active.sh"
	echo "prevent image become inactive because of long times no use"
	echo "usage: "
	echo "./make_dockerhub_repository_active.sh <REPOSITORY>"
	echo "or ./make_dockerhub_repository_active.sh <REPOSITORY> <TAG>"
}

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
	usage
	exit 1
fi

