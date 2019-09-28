#!/usr/bin/env bash

HOST=
KEYS_LOCATION=~/.ssh/id_rsa.pub

while [[ ! $# -eq 0 ]]
do
    case "$1" in
        -help)
            echo "-----------------------------------------------------------------------------------------------------------"
            echo "Script which allows to skip entering password or passphrase when working with remote Linux host through SSH"
            echo "-----------------------------------------------------------------------------------------------------------"
            printf "\n"
            echo "Available options:"
            printf "\n"
            echo "-host or -h: IP or hostname of remote machine"
            echo "-kp: SSH keys location, default value: ~/.ssh/id_rsa.pub"
            echo "-help: help"
            printf "\n"
            echo "Example: ./ssh-authorizer.sh -host vm1"
            exit
            ;;
        -host)
            HOST=$2
            ;;
        -h)
            HOST=$2
            ;;
    esac
    shift
done

ssh-copy-id -i $KEYS_LOCATION root@$HOST
eval `ssh-agent`
ssh-add $KEYS_LOCATION