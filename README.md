# Overview
This app shows how to deploy spring boot app on K8s and how to make service disvory within a cluster.
Note how the helloclient app refers to URL of hello-service

# Create hello
```./deploy-hello.sh```

# Cleanup
```kubectl create -f hello-ingress.yaml```
```kubectl delete namespace hello```
