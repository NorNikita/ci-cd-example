FROM maven:3.6.3-openjdk-8

WORKDIR /application
COPY src ./src
COPY pom.xml .

RUN mvn package
EXPOSE 9090

WORKDIR ./target

ENTRYPOINT java -jar $(grep -l -h ".jar" *)