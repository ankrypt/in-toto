#!/bin/bash

set -o errexit -o nounset

git add -A .
git commit -m "Uploading link metadata"
git push
