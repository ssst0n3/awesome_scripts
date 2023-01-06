#!/bin/bash
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

set_extension() {
    detect_os
    case "${machine}" in 
        Linux)   extension="-i";;
        Mac)     extension="-i ''";;
    esac
}

[ "$1" = "-h" -o "$1" = "--help" -o "$#" -ne 4 ] && Usage
set_extension
set -ex

sed $extension s/IP/$1/g *.expect
sed ${extension} s/PORT/$2/g *.expect
sed ${extension} s/USERNAME/$3/g *.expect
sed ${extension} s@CERT@$4@g *.expect
ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$1"
