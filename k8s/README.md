# creating web service using minikube and kubectl

### start minikube

```sh
minikube start
```

### show dashboard minikube (optional)

```sh
minikube dashboard
```

### expose port 80 using tunnel

```sh
 gsudo minikube tunnel
```

### start deployment

````sh
kubectl apply -f vite-app-deployment.yml
```sh

### start service

```sh
kubectl apply -f vite-app-service.yml
````

### delete deployment

````sh
kubectl delete -f vite-app-deployment.yml
```sh

### delete service

```sh
kubectl delete -f vite-app-service.yml
````
