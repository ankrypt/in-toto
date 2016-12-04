#!/bin/bash

set -ev
git add -A .
git config --global user.email "ankitc@gmail.com"
git config --global user.name "ankrypt"
git config --global push.default simple
git commit -am "upload link metadata"
git push https://$GH_TOKEN@github.com/ankrypt/in-toto HEAD:develop
