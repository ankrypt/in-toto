#!/bin/bash

##set -o errexit -o nounset

#rev=$(git rev-parse --short HEAD)
git remote set-url testorigin git@github.com:ankrypt/in-toto.git
git config --global user.email "ankitc@gmail.com"
git config --global user.name "ankrypt"
git config credential.helper "store --file=.git/credentials"
echo "https://${GH_TOKEN}:@github.com" > .git/credentials


git add -A .
git status
git commit -m "Uploading link metadata"
git push testorigin

#git tag -l 56 # timeout=10
#git tag -a -f -m Jenkins Git plugin tagging with 56 56 # timeout=10
#git --version # timeout=10
#git push https://github.com/ankrypt/in-toto 56
#git push https://github.com/ankrypt/in-toto HEAD:master
