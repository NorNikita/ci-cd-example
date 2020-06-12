#!/bin/bash

cat ./prepare.sh | ssh -p 49180 root@ovz5.9324240515.pqj7n.vps.myjino.ru /bin/bash

cd ~/workspace/build_deploy/ci-cd/deploy
scp -P 49180 Dockerfile root@ovz5.9324240515.pqj7n.vps.myjino.ru:~/app/

cd ~/application/target
filename=$( find *.jar )
scp -P 49180 ${filename} root@ovz5.9324240515.pqj7n.vps.myjino.ru:~/app/

cd ~/workspace/build_deploy/ci-cd/deploy
cat ./end.sh | ssh -p 49180 root@ovz5.9324240515.pqj7n.vps.myjino.ru /bin/bash