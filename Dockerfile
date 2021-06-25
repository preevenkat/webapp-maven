FROM openjdk:8-jdk-alpine
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} webapp.jar
ENTRYPOINT ["java","-jar","webapp.jar"]