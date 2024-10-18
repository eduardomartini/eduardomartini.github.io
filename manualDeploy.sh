#!/bin/bash
TARGET_BRANCH=gh-pages            # branch to commit to 

git fetch                         # fetch branches
git checkout $TARGET_BRANCH       # checkout to your branch
find . -d 1 -not -path "./_site*" -not -path "./.git*"  -exec rm -fr '{}' \; # remove all files from the branch
mv _site/* .                    # move the _site folder to the branch
rm -r _site                     # remove _site folder
git add -A
git diff-index --quiet HEAD ||  git commit -am "deploy files"  # commit to the repository (ignore if no modification)
git push origin $TARGET_BRANCH # push to remote branch