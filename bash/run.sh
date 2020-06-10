#!/bin/bash

host_name="ovz4.9324240515.pqj7n.vps.myjino.ru"
user=root
port=49155

echo "begin copy Dockerfile for jenkins to host ${host_name}"
cd ../ci-cd/jenkins
scp -P ${port} Dockerfile ${user}@${host_name}:/home

cd ../../bash
cat dockerscript.sh | ssh -p ${port} ${user}@${host_name} /bin/bash