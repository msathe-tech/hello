#!/usr/bin/env bash
./mvnw clean package
docker build -t msathepivotal/hello-service .
docker push msathepivotal/hello-service
