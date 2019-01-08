#!/usr/bin/env bash

set -eux

for proj_name in */ ; do
  cd $proj_name
  sbt clean update evicted
  cd ..
done
