#!/usr/bin/env bash

./wait-for-it.sh -t 60 rest:8080 -- echo "Rest app is ready!"
./gradlew rest-service-api-test:test -DBASE_URL=http://rest:8080
