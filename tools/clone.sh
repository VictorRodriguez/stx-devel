#!/bin/bash

REPO="https://git.starlingx.io/"

declare -a arr=("stx-config" "stx-distcloud"
"stx-distcloud-client" "stx-fault" "stx-gui" "stx-ha"
"stx-nfv" "stx-update" "stx-metal")

for i in "${arr[@]}"
do
    #git clone $REPO$i
    cd "$i"
    centos_diff=$(git log -p | grep centos | grep diff | wc -l)
    diff=$(git log -p | grep diff | wc -l)
    res=$(bc <<< "scale=3 ; $centos_diff/$diff * 100")
    echo $i = $res %
    cd ..
done
