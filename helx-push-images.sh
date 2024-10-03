#!/bin/bash

OWNER=containers.renci.org/helxplatform/jupyter/docker-stacks
ALL_IMAGES="all-spark-notebook base-notebook datascience-notebook docker-stacks-foundation julia-notebook minimal-notebook pyspark-notebook pytorch-notebook r-notebook scipy-notebook tensorflow-notebook"
TAG=$1

for IMAGE in $ALL_IMAGES
do
  docker push $OWNER/$IMAGE:$TAG
done
