#!/bin/bash

docker build -t application .
docker run -d -p 8080:8080 application