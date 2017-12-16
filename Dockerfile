FROM java:8-jdk-alpine
LABEL maintainer="selitektay@gmail.com"
RUN mkdir hello-world-rest-service
COPY /hello-world-rest-service /hello-world-rest-service/
WORKDIR /hello-world-rest-service/build/libs/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gs-rest-service-0.1.0.jar"]

