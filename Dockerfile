ARG REGISTRY=""
FROM eclipse-temurin:21-jdk-alpine
WORKDIR /
ENV PROJECT_NAME=nagp-user-service
ENV PROJECT_VERSION=0.0.1

COPY build/libs/${PROJECT_NAME}-${PROJECT_VERSION}.jar app.jar

EXPOSE 8080

ENTRYPOINT ["sh","-c","java -jar /app.jar"]
