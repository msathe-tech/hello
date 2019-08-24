#!/usr/bin/env bash

./cleanup.sh

kubectl create namespace hello

./setup-ingress.sh
kubectl get all -n hello

kubectl create -f hello-service/create-hello-service.yaml
kubectl create -f hello-client/create-hello-client.yaml

kubectl create -f hello-ingress.yaml

kubectl get all -n hello
