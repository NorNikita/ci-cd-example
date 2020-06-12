#!/bin/bash

echo "rm -rf /app/*" | ssh -p 49180 root@ovz5.9324240515.pqj7n.vps.myjino.ru /bin/bash
scp -P 49180 Dockerfile root@ovz5.9324240515.pqj7n.vps.myjino.ru:~/app


cd ~/application/target
filename=$( find *.jar )
scp -P 49180 ${filename} root@ovz5.9324240515.pqj7n.vps.myjino.ru:~/app

cd ~/workspace/build_deploy/ci-cd/deploy
cat ./deploy.sh | ssh -p 49180 root@ovz5.9324240515.pqj7n.vps.myjino.ru /bin/bash