#!/bin/sh

EMAIL=$1

if [ $EMAIL == "" ]
then
	echo "Please input an email address"
	exit
fi

if [ ! -d "key_install" ]
then
	mkdir key_install
fi

ssh-keygen -t rsa -b 4096 -C $EMAIL -f key_install/${EMAIL}_key
echo "Installing SSH key"
cp key_install/${EMAIL}_key ~/.ssh/id_rsa
cp key_install/${EMAIL}_key.pub ~/.ssh/id_rsa.pub
echo "Public key:"
cat ~/.ssh/id_rsa.pub
rm -r key_install