#!/bin/bash
TARGET_BRANCH=gh-pages            # branch to commit to 

cp -r _site _site_2deploy         # copy the _site folder to a temporary folder
git fetch                         # fetch branches
git checkout $TARGET_BRANCH       # checkout to your branch
# rm -r _site                   # remove all files from the branch
# mv _site_2deploy/* .              # move the _site folder to the branch
# rm -r _site_2deploy           # remove all files from the branch
find . -type d -d 1 -not -path "./_site*" -not -path "./.git*"  -exec rm -fr '{}' \; # remove all files from the branch
mv _site/* .                    # move the _site folder to the branch
rm -r _site                     # remove _site folder
git add -A
git diff-index --quiet HEAD ||  git commit -am "deploy files"  # commit to the repository (ignore if no modification)
git push origin $TARGET_BRANCH # push to remote branch