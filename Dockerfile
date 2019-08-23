FROM openjdk:8-jdk-alpine
MAINTAINER Byeonggil-Jung "jbkcose@gmail.com"

COPY . /app
WORKDIR /app

RUN chmod +x ./gradlew
RUN ./gradlew build jar
WORKDIR /app/build/libs

ENV JAVA_OPT=""

ENTRYPOINT ["java", "-jar", "hello-jubaky.jar"]
