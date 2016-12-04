#!/bin/bash

set -o errexit -o nounset

git config --global user.email "ankitc@gmail.com"
git config --global user.name "ankrypt"

git add -A .
git commit -m "Uploading link metadata"
git push
