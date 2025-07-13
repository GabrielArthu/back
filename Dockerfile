FROM openjdk:21-jdk-slim

WORKDIR /app

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} backend-stemine-2-0.0.1-SNAPSHOT.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar","backend-stemine-2-0.0.1-SNAPSHOT.jar"]