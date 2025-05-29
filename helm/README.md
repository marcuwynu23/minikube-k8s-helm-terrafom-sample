# creating web service using minikube and helm

### start minikube

```sh
minikube start
```

### show dashboard minikube (optional)

```sh
minikube dashboard
```

### install the helm app

````sh
 helm install vite-app ./vite-app
```sh

### if changes upgrade the app

```sh
helm upgrade vite-app ./vite-app
````

### to acess the web service using minikube

```sh
minikube service vite-app-svc
```

### to access port 80

````sh
kubectl port-forward svc/vite-app-svc 80:80
```sh

### delete service

```sh
kubectl delete -f vite-app-service.yml
````
