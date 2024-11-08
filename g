#!/bin/bash

# check if a message was supplied
if [ $# -eq 0 ]
  then
    echo "No commit message supplied. Usage: ./g 'Commit message'"
    exit 1
fi

# git add
git add . 
ADD_STATUS=$?

if [ $ADD_STATUS -ne 0 ]; then
  echo "git add command failed. Showing git status:"
  git status
  exit $ADD_STATUS
fi

# git commit
git commit -m "$1"
COMMIT_STATUS=$?

if [ $COMMIT_STATUS -ne 0 ]; then
  echo "git commit failed. Showing last part of git log:"
  git log -5 --pretty=format:"%h - %an, %ar : %s"
  exit $COMMIT_STATUS
fi

# git push
git push
PUSH_STATUS=$?

if [ $PUSH_STATUS -ne 0 ]; then
  echo "git push failed. Showing git log:"
  git log -5 --pretty=format:"%h - %an, %ar : %s"
  exit $PUSH_STATUS
fi

