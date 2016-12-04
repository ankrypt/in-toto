#!/bin/bash

##set -o errexit -o nounset

#rev=$(git rev-parse --short HEAD)
#git remote set-url origin git@github.com:ankrypt/in-toto.git
#git init
#git config user.email "ankitc@gmail.com"
#git config user.name "ankrypt"
#git config credential.helper "store --file=.git/credentials"
#echo "https://${GH_TOKEN}:@github.com" > .git/credentials

set -ev
git add -A .
git config --global user.email "ankitc@gmail.com"
git config --global user.name "ankrypt"
git config --global push.default simple
git commit -am "updated generated documentation on webpage by travis-ci [ci skip]"
git push https://$GH_TOKEN@github.com/ankrypt/in-toto


#git init
#git checkout -b gh-pages
#git add .
#git -c user.name='ankrypt' -c user.email='ankitc@gmail.com' commit -m init
#git push -f https://ankrypt:$GH_TOKEN@github.com/ankrypt/in-toto-gh-pages gh-pages &2>/dev/null

#git remote add upstream "https://$GH_TOKEN@github.com/ankrypt/in-toto.git"
#git fetch upstream
#git reset upstream/gh-pages

#git add -A .
#git commit -m "rebuild pages at ${rev}"
#git push -q upstream HEAD:gh-pages

#git add -A .
#git status
#git commit -m "Uploading link metadata"
#git push origin

#git tag -l 56 # timeout=10
#git tag -a -f -m Jenkins Git plugin tagging with 56 56 # timeout=10
#git --version # timeout=10
#git push https://github.com/ankrypt/in-toto 56
#git push https://github.com/ankrypt/in-toto HEAD:master
