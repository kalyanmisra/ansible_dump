#!/bin/bash 

if [ ! -z $1 & ! -z $2 ]; then
source /root/ansible/ansible/activate 
ansible jump_hosts -m yum -a "name=$1 state=$2" --ask-vault-pass
else
echo In exit loop
exit 1
fi

