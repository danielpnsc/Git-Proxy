#!/bin/bash

export http_proxy=http://proxyss.wits.ac.za
export https_proxy=http://proxyss.wits.ac.za

user=`echo $USER`

read -sp "Password for $user:" passvar
echo
#read -p "Download:" downvar
echo
wget --proxy-user 'students\'$user --proxy-password $passvar $1

unset http_proxy
unset https_proxy
