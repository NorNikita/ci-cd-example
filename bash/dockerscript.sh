cd /home
docker build -t jenkins .
docker run -d -p 8080:8080 \
       -v /var/run/docker.sock:/var/run/docker.sock \
       -v /home/application/:/var/jenkins_home/application/ \
       jenkins