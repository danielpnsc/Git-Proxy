#!/bin/bash
echo "1 - Set proxy"
echo "2 - Remove proxy"
echo -e "Option: \c "

read  choice
if [ $choice -eq 1 ] ; then
    echo "Set proxy"
    username=`echo $USER`
    read -sp "Password:" password
    echo
    git config --global http.proxy http://'students\'$username:$password@proxyss.wits.ac.za:80
    git config --global https.proxy http://'students\'$username:$password@proxyss.wits.ac.za:80
    export http_proxy=http://'students\'$username:$password@proxyss.wits.ac.za:80
    echo
    
else
    
        echo "Remove proxy"
	git config --global --unset http.proxy
	git config --global --unset https.proxy
	unset http_proxy
fi
