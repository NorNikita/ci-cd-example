#!/bin/bash

count=$(docker ps -aq -f status=running)

if [ ${#count[*]} -gt 0 ]
then
docker stop ${count[*]}
docker rm ${count[*]}
fi

docker build -t application .
docker run -d -p 8080:8080 application echo "application started"