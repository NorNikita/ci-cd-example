#!/bin/bash

cd ~/app
pwd

docker build -t application .
docker run -d -p 9090:9090 application