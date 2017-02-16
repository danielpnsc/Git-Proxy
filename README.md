# Wits-Proxy
##Tools for linux terminal to cope with annoying Wits proxy.
### setproxy.sh
Adds the wits proxy to your current environment.
NOTE:It sets the git proxy globally, which means it gets saved. If you are not using this on a personal pc, I'd recommend removing the proxy when done, using this script.

### wgetproxy.sh
Currently needs to be revised.

##Enable execution permissions first with:
```shell
# u is for user. You can use g:group o:others a:all
chmod u+x script.sh #Replace script.sh with the script.
```
####NOTE! Run setproxy.sh with:
```shell
  source setproxy.sh
```
####OR
```shell
  . setproxy.sh #(Yes a full stop)
```
####wgetproxy.sh can be ran in the normal way
```shell
./wgetproxy.sh
```
