#!/bin/bash

ssh-keygen -f "$HOME/.ssh/known_hosts" -R "$1"

Usage(){
    cat <<EOF
Replace the ssh address and credentials in the expect scripts

Usage: 
    $0 Ip Port Username Password
    ./login.expect
    ./scp_download.expect RmoteFilePath [LocalFilePath]
    ./scp_upload.expect LocalFilePath [RemoteFilePath]

Example:
    $0 172.17.0.1 22 root 'P@ssword'

EOF
    exit 1
}

[ "$1" = "-h" -o "$1" = "--help" -o "$#" -ne 4 ] && Usage
sed -i='' s/IP/$1/g *.expect
sed -i='' s/PORT/$2/g *.expect
sed -i='' s/USERNAME/$3/g *.expect
sed -i='' s/PASSWORD/$4/g *.expect
