## Setup Docker Image
```./mvnw clean package```
```docker build -t msathepivotal/helloservice .```
```docker push msathepivotal/helloservice```

## Deploy on K8s
```kubectl create -f kubernetes/overlays/local/deployment.yaml -f kubernetes/overlays/local/service.yaml```
