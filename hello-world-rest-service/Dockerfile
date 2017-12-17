FROM gradle:4.3.1-jdk8-alpine
LABEL maintainer="selitektay@gmail.com"
RUN mkdir hello-world-rest-service
COPY /hello-world-rest-service /hello-world-rest-service/
WORKDIR hello-world-rest-service
RUN gradle wrapper --gradle-version 4.3.1
EXPOSE 8080
CMD ./gradlew bootRun
