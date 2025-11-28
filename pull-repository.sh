#!/bin/bash

TARGET_DIR=$1
REPOSITORY=$2
REPOSITORY_TOKEN=$3

if [ -d "$TARGET_DIR" ]; then
    cd $TARGET_DIR
    git -c http.extraheader="AUTHORIZATION: bearer $REPOSITORY_TOKEN" pull
else
    cd 
    git clone https://$REPOSITORY_TOKEN@$REPOSITORY.git .
fi
