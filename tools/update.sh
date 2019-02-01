#!/bin/bash

REPO="https://git.starlingx.io/"

declare -a arr=("stx-config" "stx-distcloud"
"stx-distcloud-client" "stx-fault" "stx-gui" "stx-ha"
"stx-nfv" "stx-update" "stx-metal" "stx-tools")

for i in "${arr[@]}"
do
    if [ -d $i ]
    then
        cd $i
        git pull
        cd ..
    fi
    echo $i updated
done

