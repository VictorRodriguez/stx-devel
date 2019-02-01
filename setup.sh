#usr/bin/bash
OS_NAME=$(lsb_release -a | grep "Distributor ID" | cut -d":" -f2)

echo Running at $OS_NAME OS

if [ "$OS_NAME == Ubuntu" ]
then
    echo "Updating"
    sudo apt-get update
    sudo apt-get install make git curl
fi
