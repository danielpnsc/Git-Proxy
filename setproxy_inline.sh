#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ]
then
echo "./setproxy_inline.sh [Command] [Username] [Password]"
echo "Commands:"
echo "1 - Set proxy"
echo "2 - Remove proxy"
exit
fi

choice="$1"

if [ $choice -eq 1 ] ; then
    echo "Set proxy"
    username="$2"
    password="$3"
    git config --global http.proxy http://'students\'$username:$password@proxyss.wits.ac.za:80
    git config --global https.proxy http://'students\'$username:$password@proxyss.wits.ac.za:80
    export http_proxy=http://'students\'$username:$password@proxyss.wits.ac.za:80
    export HTTP_PROXY=$http_proxy
    export no_proxy=localhost,127.0.0.1,.wits.ac.za
    export NO_PROXY=$no_proxy
    export https_proxy=$http_proxy
    export HTTPS_PROXY=$http_proxy
    export ftp_proxy=$http_proxy
    export FTP_PROXY=$http_proxy
    export all_proxy=$http_proxy
    export ALL_PROXY=$http_proxy
    echo "Proxy configured"
    
else
    
        echo "Remove proxy"
	git config --global --unset http.proxy
	git config --global --unset https.proxy
	unset http_proxy
	unset https_proxy
	unset ftp_proxy
	unset all_proxy
	unset HTTP_PROXY
    	unset HTTPS_PROXY
    	unset NO_PROXY
fi
