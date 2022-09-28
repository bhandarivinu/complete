FROM openjdk:8-jdk-alpine
RUN apk --no-cache add curl
ARG JAR_FILE=build/libs/spring-boot-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
