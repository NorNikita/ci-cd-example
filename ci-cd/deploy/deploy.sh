#!/bin/bash

count=$(docker ps -aq -f status=running)

if [ ${#count[*]} -ge 1 ] &&  [ ! -z ${count[0]} ]
then
docker stop ${count[*]}
docker rm ${count[*]}
fi

docker build -t application .
docker run -d -p 8080:8080 application