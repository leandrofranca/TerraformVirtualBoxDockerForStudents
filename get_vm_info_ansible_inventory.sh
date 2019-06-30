#!/bin/bash

echo "[default]"
vagrant ssh-config | grep HostName\ | xargs | cut -d " " -f2 | tr -d " \n"
echo -n " "

echo -n "ansible_ssh_host="
vagrant ssh-config | grep HostName\ | xargs | cut -d " " -f2 | tr -d " \n"
echo -n " "

echo -n "ansible_ssh_port="
vagrant ssh-config | grep Port\ | xargs | cut -d " " -f2 | tr -d " \n"
echo -n " "

echo -n "ansible_ssh_user="
vagrant ssh-config | grep User\ | xargs | cut -d " " -f2 | tr -d " \n"
echo -n " "

echo -n "ansible_ssh_private_key_file="
vagrant ssh-config | grep IdentityFile\ | xargs | cut -d " " -f2 | tr -d " \n"
echo ""