#!/bin/bash

cd ~/application/target

ls -l

filename=$( find *.jar )
scp -P 49209 ${filename} root@ovz3.9324240515.m61kn.vps.myjino.ru:~/