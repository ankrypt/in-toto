#!/bin/bash

##set -o errexit -o nounset

rev=$(git rev-parse --short HEAD)

git config --global user.email "ankitc@gmail.com"
git config --global user.name "ankrypt"
git config credential.helper "store --file=.git/credentials"
echo "https://${GH_TOKEN}:@github.com" > .git/credentials


git add -A .
git status
git commit -m "Uploading link metadata"
git push origin
