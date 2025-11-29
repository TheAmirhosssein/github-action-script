#!/bin/bash

TARGET_DIR=$1
REPOSITORY=$2
REPOSITORY_TOKEN=$3

if [ -d "$TARGET_DIR" ]; then
    cd $TARGET_DIR
    git stash
    git pull
else
    mkdir -p $TARGET_DIR
    cd $TARGET_DIR
    git clone https://$REPOSITORY_TOKEN@$REPOSITORY.git .
fi
