#!/usr/bin/env bash

./cleanup.sh

kubectl create namespace hello

./setup-ingress.sh
kubectl get all -n hello

kubectl create -f hello-service/create-hello-service.yaml
kubectl create -f helloclient/create-helloclient.yaml

kubectl create -f hello-ingress.yaml

kubectl get all -n hello