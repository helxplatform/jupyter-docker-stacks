#!/bin/bash

OWNER=containers.renci.org/helxplatform/jupyter/docker-stacks
ALL_IMAGES="all-spark-notebook base-notebook datascience-notebook docker-stacks-foundation julia-notebook minimal-notebook pyspark-notebook pytorch-notebook r-notebook scipy-notebook tensorflow-notebook"
EXISTING_TAG=$1
ADDITONAL_TAG=$2

for IMAGE in $ALL_IMAGES
do
  docker tag $OWNER/$IMAGE:$EXISTING_TAG $OWNER/$IMAGE:$ADDITONAL_TAG
done
