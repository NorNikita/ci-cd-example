#!/bin/bash

count=$(docker ps -aq -f status=running)

echo "count $count"


if [ ${#count[*]} -gt 0 ]
then
docker stop ${count[*]}
docker rm ${count[*]}
fi

docker build -t application .
docker run -d -p 8080:8080 application