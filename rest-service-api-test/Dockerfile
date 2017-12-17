FROM gradle:4.3.1-jdk8-alpine
LABEL maintainer="selitektay@gmail.com"
RUN mkdir rest-service-api-test
COPY ./ /rest-service-api-test/
WORKDIR rest-service-api-test
RUN gradle wrapper --gradle-version 4.3.1
#RUN ./gradlew build
#WORKDIR /hello-world-rest-service/build/libs/
CMD ./gradlew rest-service-api-test:test
#ENTRYPOINT ["java", "-jar", "gs-rest-service-0.1.0.jar"]