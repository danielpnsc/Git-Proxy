#!/bin/bash

user=`echo $USER`

read -sp "Password for $user:" passvar
echo
read -p "Download:" downvar
echo
wget --proxy-user "'students\'$user" --proxy-password "$passvar" $downvar
