FROM java:8-jdk-alpine
LABEL maintainer="selitektay@gmail.com"
RUN mkdir docker-demo
COPY . /docker-demo/
RUN apk update && apk add bash
WORKDIR /docker-demo/hello-world-rest-service/
RUN ./gradlew build
WORKDIR /docker-demo/hello-world-rest-service/build/libs
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gs-rest-service-0.1.0.jar"]