#!/usr/bin/env bash
./mvnw clean package
docker build -t msathepivotal/helloclient .
docker push msathepivotal/helloclient