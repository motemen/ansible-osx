#!/bin/bash

set -v

ansible-playbook -i localhost, -u "$(whoami)" -K local.yml -vvv

if [ -e ~/.ssh/id_dsa ]; then
    :
else
    ssh-keygen -t dsa
fi
