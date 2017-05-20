#! /bin/bash

REPO_URL=git@github.com:rnsell/self-build-example.git
REPO_FOLDER="./self-build-example"
REPO_BUILD_SCRIPT_IN_FOLDER="./build.sh"
BRANCH_BASE="automated-build-"
BUILD_TIME=$(date +%s)
# YOU CAN CD TO ANOTHER DIRECTORY HERE
git clone $REPO_URL
echo "#################################################################"
echo "Cloned repo "$REPO_URL
echo "#################################################################"
cd $REPO_FOLDER
git checkout -b $BRANCH_BASE$BUILD_TIME
$($REPO_BUILD_SCRIPT_IN_FOLDER)
git add . -A
git commit -m"Automated build complete."
git push --set-upstream origin $BRANCH_BASE$BUILD_TIME
echo "#################################################################"
echo "Pushed Branch."
echo "#################################################################"
