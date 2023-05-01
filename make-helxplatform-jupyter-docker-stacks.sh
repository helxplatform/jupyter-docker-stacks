#!/bin/bash

OWNER=containers.renci.org/helxplatform/jupyter/docker-stacks
DOCKER_BUILD_ARGS="--build-arg=NB_GID=0"
export OWNER DOCKER_BUILD_ARGS

make "$@"
       