#!/bin/bash
# bash script that builds, packages and deploys the python apllication aslo take care of configuring the minikube cluster, and ensuring the webserver endpoint is available.

#to be run in a server with minikube and kubectl already installed
cd int-webapp
eval $(minikube -p minikube docker-env)
docker build -t webservice2 .
minikube addons enable ingress
kubectl config use-context minikube
kubectl apply -f external.yml
kubectl apply -f kube-secret.yml
kubectl apply -f webservice2.yml
kubectl rollout status deployment/webservice2-deploy
# Add Ingress host to /etc/hosts
echo "$(minikube ip) subdomain2.webservice.com" | sudo tee -a /etc/hosts
