#!/bin/bash
set -ex
Usage(){
    cat <<EOF
Replace the ssh address and credentials in the expect scripts

Usage: 
    $0 Ip Port Username CertFilePath
    ./login.expect
    ./scp_download.expect RmoteFilePath [LocalFilePath]
    ./scp_upload.expect LocalFilePath [RemoteFilePath]

Example:
    $0 172.17.0.1 22 root '~/.ssh/id_rsa'

EOF
    exit 1
}

detect_os() {
    unameOut="$(uname -s)"
    case "${unameOut}" in
        Linux*)     machine=Linux;;
        Darwin*)    machine=Mac;;
        CYGWIN*)    machine=Cygwin;;
        MINGW*)     machine=MinGw;;
        *)          machine="UNKNOWN:${unameOut}"
    esac
}

_sed() {
    case "${machine}" in 
        Linux)   sed -i $@;;
        Mac)     sed -i '' $@;;
    esac
}

[ "$1" = "-h" -o "$1" = "--help" -o "$#" -ne 4 ] && Usage
detect_os
_sed s/IP/$1/g *.expect
_sed s/PORT/$2/g *.expect
_sed s/USERNAME/$3/g *.expect
_sed s@CERT@$4@g *.expect
ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$1"
