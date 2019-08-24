# Overview
This app shows how to deploy spring boot app on K8s and how to make service dis	discovery within a cluster.
Note how the hello-client app refers to URL of hello-service

# Create hello
Make sure your kubectl is set for correct context.
```./deploy-hello.sh```

# Cleanup
```kubectl delete namespace hello```
