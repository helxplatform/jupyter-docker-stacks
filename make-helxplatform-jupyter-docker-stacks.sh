#!/bin/bash

OWNER=helxplatform/jupyter/docker-stacks
DOCKER_BUILD_ARGS="--build-arg=NB_GID=0"
# https://hub.docker.com/r/nvidia/cuda/tags
# DOCKER_BUILD_ARGS+=" --build-arg=ROOT_CONTAINER=nvidia/cuda:12.1.1-cudnn8-runtime-ubuntu22.04"
DOCKER_BUILD_ARGS+=" --build-arg=ROOT_CONTAINER=nvidia/cuda:12.2.2-cudnn8-runtime-ubuntu22.04"
REGISTRY=containers.renci.org
export OWNER DOCKER_BUILD_ARGS REGISTRY

make "$@"
       