FROM gradle:4.3.1-jdk8-alpine
LABEL maintainer="selitektay@gmail.com"
RUN mkdir docker-demo
COPY ./ /docker-demo/
WORKDIR docker-demo
RUN gradle wrapper --gradle-version 4.3.1
#RUN ./gradlew build
#WORKDIR /hello-world-rest-service/build/libs/
EXPOSE 8080
RUN ./gradlew bootRun
CMD ./gradlew rest-service-api-test:test
#ENTRYPOINT ["java", "-jar", "gs-rest-service-0.1.0.jar"]