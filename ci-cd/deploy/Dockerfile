FROM openjdk:8

WORKDIR /app
COPY . .

EXPOSE 8080
ENTRYPOINT java -jar $( find *.jar )
