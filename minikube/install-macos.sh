#!/bin/bash -e

brew install hyperkit

curl -Lo minikube https://github.com/kubernetes/minikube/releases/download/v1.4.0/minikube-darwin-amd64
chmod u+x minikube
mv minikube /usr/local/bin/

curl -LO https://github.com/kubernetes/minikube/releases/download/v1.4.0/docker-machine-driver-hyperkit
chmod u+x docker-machine-driver-hyperkit
mv docker-machine-driver-hyperkit /usr/local/bin/

# set minikube default values
minikube config set memory 4096
minikube config set cpus 2
minikube config set vm-driver hyperkit