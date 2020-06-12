FROM openjdk:8

WORKDIR /app
COPY . .

EXPOSE 9090
ENTRYPOINT java -jar $( find *.jar )
