#!/bin/bash

set -v

ansible-playbook -i localhost, -u "$(whoami)" -K local.yml -v

if [ -e ~/.ssh/id_dsa ]; then
    :
else
    ssh-keygen -t dsa
fi
