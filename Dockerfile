FROM gradle:4.3.1-jdk8-alpine
LABEL maintainer="selitektay@gmail.com"
RUN mkdir hello-world-rest-service
COPY /../hello-world-rest-service /hello-world-rest-service/
WORKDIR hello-world-rest-service
RUN ls
RUN gradle wrapper --gradle-version 4.3.1
RUN ./gradlew build
WORKDIR /hello-world-rest-service/build/libs/
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gs-rest-service-0.1.0.jar"]