#!/bin/bash
set -e

containerid=$(docker ps -q)

if [ -n "$containerid" ]; then
    docker stop $containerid
    docker rm $containerid
fi
