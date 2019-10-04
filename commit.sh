#!/bin/bash
REPODIR=$(pwd)
REPONODE=$(printf '%q\n' "${PWD##*/}")

CONTENTDIR=$(dirname "$0")
echo "REPO DIR: $REPODIR"
echo "CONTENT DIR: $CONTENTDIR"

cd $CONTENTDIR

if [ $# -eq 1 ]
  then
    COMMITMSG="$REPONODE: $1"
  else
    COMMITMSG="$REPONODE: Added content"
fi
    echo $COMMITMSG
git add -A && git commit -m "$COMMITMSG"

cd $REPODIR
