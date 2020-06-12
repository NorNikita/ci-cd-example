FROM open-jdk-8

WORKDIR /app
COPY /home/ .

EXPOSE 9090
ENTRYPOINT java -jar $( find *.jar )
