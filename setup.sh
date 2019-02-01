#usr/bin/bash
OS_NAME=$(lsb_release -a | grep "Distributor ID" | cut -d":" -f2)

echo Running at $OS_NAME OS

if [ "$OS_NAME == Ubuntu" ]
then
    echo "Updating"
    sudo apt-get update
    sudo apt-get install make git curl
fi

mkdir -p starlingx/
if [ ! -d stx-tools ]
    then
        git clone https://git.starlingx.io/stx-tools
fi

echo > localrc
echo "MYUNAME=$USER" >> localrc
echo "PROJECT=starlingx" >> localrc
echo "HOST_PREFIX=$PWD/starlingx/workspace" >> localrc
echo "HOST_MIRROR_DIR=$PWD/starlingx/mirror" >> localrc


if [ -f proxy.conf ]
    then
    PROXY=$(cat proxy.conf)
    echo "http_proxy="$PROXY""
    echo "https_proxy="$PROXY""
    echo "ftp_proxy "$PROXY""
fi
