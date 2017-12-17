# Automated Test Environment with Docker

Solve your test environment woes with these simple steps.

## Tools and frameworks that has been used for this tutorial
* [Docker](https://www.docker.com/) - Software containerization platform
* [Spring Restful Service](https://spring.io/guides/gs/rest-service/) - Simple 'Hello World' web service with Spring
* [REST-assured](http://rest-assured.io/) - Rest webservice testing framework
* [Gradle Docker plugin](https://github.com/bmuschko/gradle-docker-plugin) - For managing Docker images and containers


### Building application and running tests

Start hello world spring rest service:
```
./gradlew bootRun
```

Or you can create the jar file:
```
./gradlew build
```

And run the jar file:
```
java -jar build/libs/gs-rest-service-0.1.0.jar
```

Run integration test
```
./gradlew rest-service-api-test:test

```

## Docker Commands

Build docker image:

```
docker build -t spring-rest-hello-world:0.1 .

```
Run docker image:

```
docker run -d -p 8080:8080 --name rest-hello  spring-rest-hello-world:0.1

```

Stop docker container:

```
docker stop rest-hello
```

Remove docker container:

```
docker rm rest-hello
```

Remove docker image:

```
docker rmi spring-rest-hello-world:0.1
```