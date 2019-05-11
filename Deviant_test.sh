#!/bin/bash
#0.99-- NullEntryDev Script
NODESL=Eight
NODESN=8
BLUE='\033[0;96m'
GREEN='\033[0;92m'
RED='\033[0;91m'
YELLOW='\033[0;93m'
CLEAR='\033[0m'
if [[ $(lsb_release -d) != *16.04* ]]; then
"echo -e ${RED}"The operating system is not Ubuntu 16.04. You must be running on ubuntu 16.04."${CLEAR}"
exit 1
fi
echo
echo
echo "Downloading latest Deviant binaries"
wget https://github.com/Deviantcoin/Wallet/blob/master/deviant-4.0.0-x86_64-linux-gnu.tar.gz
sleep 3
sudo mv /root/dev/deviantd /root/dev/deviant-cli /usr/local/bin
sudo chmod 755 -R /usr/local/bin/deviant*
