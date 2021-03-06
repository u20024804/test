#!/bin/bash

npm install gitbook-cli -g
gitbook init
gitbook install
gitbook build

cd _book
git init
git config user.name "Rater"
git config user.email "ToutyRater@users.noreply.github.com"
git remote add upstream "https://${GH_TOKEN}@github.com/ToutyRater/test.github.io.git"

git checkout -b gh-pages
git add -A
git commit -m 'update'
git push upstream gh-pages -f
