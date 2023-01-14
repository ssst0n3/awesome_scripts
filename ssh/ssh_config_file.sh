#!/bin/bash

Usage(){
    cat <<EOF
ssh by config file

Usage:
    $0 Hostname Ip Username Identifile

Example:
    $0 machine-ubuntu 172.17.0.1 root id_rsa
EOF
    exit 1
}

[ "$1" = "-h" -o "$1" = "--help" -o "$#" -ne 4 ] && Usage

Hostname=$1
Ip=$2
Username=$3
Identifile=$4

cat <<EOF | sudo tee -a /etc/hosts
$Ip $Hostname
EOF

cat <<EOF >> ~/.ssh/config
Host $Hostname
    Hostname $Hostname
    User $Username
    IdentityFile $Identifile
EOF