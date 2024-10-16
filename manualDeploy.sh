#!/bin/bash
TARGET_BRANCH=gh-pages            # branch to commit to 

git fetch                         # fetch branches
git checkout $TARGET_BRANCH       # checkout to your branch
git rm -r *                        # remove all files from the branch
git checkout master -- _site/*    # copy the files from the master branch