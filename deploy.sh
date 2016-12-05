#!/bin/bash

set -ev

new_chk=$(find ./demo/ -type f -exec md5sum {} \; | sort -k 2 | md5sum  | tr -d '\r ')
orig_chk=$(cat ./project.chk | tr -d '\r ') 

echo $new_chk
echo $orig_chk

if [[ "$new_chk" == "$orig_chk" ]] ; then
    # if same checksums, then abort this push
    echo "[-]nothing changed, abort this push..." 1>&2
    exit 1
else
    echo -ne $(find ./demo/ -type f -exec md5sum {} \; | sort -k 2 | md5sum) > project.chk
    echo "[+]renew chksum file..."
    git add -A .
    git config --global user.email "ankitc@gmail.com"
    git config --global user.name "ankrypt"
    git config --global push.default simple
    git commit -am "upload link metadata"
    git push https://$GH_TOKEN@github.com/ankrypt/in-toto HEAD:develop
fi
