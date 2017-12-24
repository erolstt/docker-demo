#!/usr/bin/env bash

# wait for rest service is available.
# rest service is defined in docker-compose.test.yml file so it should be accessible to run-rest-test.sh script
./wait-for-it.sh -t 60 rest:8080 -- echo "Rest app is ready!"
./gradlew rest-service-api-test:test -DBASE_URL=http://rest:8080
