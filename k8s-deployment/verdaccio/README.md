Install Verdaccio to Kubernetes cluster
=========================================

[Verdaccio · A lightweight private npm proxy registry](https://verdaccio.org/)

## Create deployment

https://github.com/verdaccio/docker-examples/tree/master/kubernetes-example

```
$ kubectl create -f deployment.yaml
$ kubectl create -f service.yaml
```

## Use helm chart

https://github.com/helm/charts/tree/master/stable/verdaccio

To use in localhost, specify `LoadBalancer` to service.type.

```
$ helm install --name my-release \
  --set service.type=LoadBalancer \
    stable/verdaccio
```

or edit config.yml

```yaml
service:
   :
  type: LoadBalancer
```

```
$ helm install -n my-release -f config.yml stable/verdaccio
```