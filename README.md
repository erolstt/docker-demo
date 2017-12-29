# Create Testing Environment with Docker for Integration Testing

Solve your test environment woes with these simple steps.

## Tools and frameworks that has been used for this tutorial
* [Docker](https://www.docker.com/) - Software containerization platform
* [Docker Compose](https://github.com/docker/compose) - A tool for defining and running multi-container Docker applications.
* [Spring Restful Service](https://spring.io/guides/gs/rest-service/) - Simple 'Hello World' web service with Spring
* [REST-assured](http://rest-assured.io/) - Rest webservice testing framework
* [Gradle Docker plugin](https://github.com/bmuschko/gradle-docker-plugin) - For managing Docker images and containers
* [Gradle SSH Plugin](https://gradle-ssh-plugin.github.io/) - A Gradle plugin which provides SSH facilities for continuous delivery.
* [wait-for-it](https://github.com/vishnubob/wait-for-it) -  A pure bash script that will wait on the availability of a host and TCP port.

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

or
```
 ./gradlew rest-service-api-test:test -DBASE_URL=http://example.com:8080

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

#### Docker Compose

Build environment:
```
docker-compose -f docker-compose.test.yml build
```

Spin up environment:

```
docker-compose -f docker-compose.test.yml up
```

Destroy environment:

```
docker-compose -f docker-compose.test.yml down
```

Remove all images:
```
docker-compose -f docker-compose.test.yml down --rmi all
```

Remove volumes:
```
docker-compose -f docker-compose.test.yml down -v
```
### Gradle Docker Tasks

Build Image:
It will build 'erolstt/spring-rest-demo:latest' image
```
./gradlew buildSpringBootRestImage
```

Create Container:
It will create 'spring-rest' container from 'erolstt/spring-rest-demo:latest' image
```
./gradlew createRestAPIContainer
```

Start Container:
It will start 'spring-rest' container on 8080 port
```
./gradlew startRestAPIContainer
```

Stop Container:
It will stop 'spring-rest' container
```
./gradlew stopRestAPIContainer
```

Remove Container:
It will remove 'spring-rest' container
```
./gradlew removeRestAPIContainer
```

Remove Image:
It will remove 'erolstt/spring-rest-demo:latest'
```
./gradlew removeSpringBootRestImage
```

There are dependencies between tasks. That means if you run ``./gradlew startRestAPIContainer``
task, it will build the image and run the container. So, you do not need to run build image 
and create container tasks beforehand. 