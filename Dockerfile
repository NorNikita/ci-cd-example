FROM maven:3.6.3

VOLUME /myvolume
RUN cd /myvolume && rm -r *

WORKDIR /application
COPY src ./src
COPY pom.xml .

CMD mvn package && cp -a ./target /myvolume