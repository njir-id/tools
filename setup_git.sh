#!/bin/sh

USERNAME=$1
USEREMAIL=$2

if [ -z "$USERNAME" ]
then
	echo "Bro, please set your username"
	exit 696969
fi

if [ -z "$USEREMAIL" ]
then
	echo "Bro, please set your email"
	exit 6969
fi

echo "Please wait while setting up username & email..."
git config --global user.name "$USERNAME"
git config --global user.email "$USEREMAIL"