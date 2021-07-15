#!/bin/sh

#### Current working directory is: /github/workspace ####
WORKDIR=$(pwd)
echo "Working directory => $WORKDIR"

if [ ! -z $INPUT_USERNAME ];
then echo $INPUT_PASSWORD | docker login $INPUT_REGISTRY -u $INPUT_USERNAME --password-stdin
fi

echo "$INPUT_RUN" | sed -e 's/\\n/;/g' > semicolon_delimited_script

if [ ! -z $INPUT_DOCKER_NETWORK ];
then INPUT_OPTIONS="$INPUT_OPTIONS --network $INPUT_DOCKER_NETWORK"
fi

if [ -z $INPUT_SHELL ];
then INPUT_SHELL=sh
fi

if [ -z $INPUT_IMAGE ];
then INPUT_IMAGE=cubetiq/calpine-docker-openjdk:latest
fi

if [ -z $semicolon_delimited_script ];
then semicolon_delimited_script="echo $(whoami)"
fi

exec $INPUT_SHELL semicolon_delimited_script