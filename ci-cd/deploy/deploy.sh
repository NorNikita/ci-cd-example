#!/bin/bash

docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

docker build -t application .
docker run -d -p 8080:8080 application echo "application started"