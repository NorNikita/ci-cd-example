FROM maven:3.6.3-openjdk-8

ARG JAR_NAME
WORKDIR /application
COPY src ./src
COPY pom.xml .

RUN mvn package

EXPOSE 9090

ENTRYPOINT ["java", "-jar", "./target/ci-cd-example-1.0-SNAPSHOT.jar"]