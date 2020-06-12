FROM openjdk:8

WORKDIR /app
COPY /root/app .

EXPOSE 9090
ENTRYPOINT java -jar $( find *.jar )
