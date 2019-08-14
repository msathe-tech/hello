#!/usr/bin/env bash
./mvnw clean package
docker build -t msathepivotal/helloservice .
docker push msathepivotal/helloservice