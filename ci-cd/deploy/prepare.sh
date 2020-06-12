#!/bin/bash

rm -rf ~/app/*

count=$(docker ps -aq -f status=running)

if [ ${#count[*]} -ge 1 ] &&  [ ! -z ${count[0]} ]
then
docker stop ${count[*]}
docker rm ${count[*]}
fi