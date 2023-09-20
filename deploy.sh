#!/bin/bash
# bash script that builds, packages and deploys the python apllication aslo take care of configuring the minikube cluster, and ensuring the webserver endpoint is available.

eval $(minikube -p minikube docker-env)
docker build -t kube-task .


minikube addons enable ingress
kubectl config use-context minikube
kubectl apply -f external.yml
kubectl apply -f webservice1.yml
kubectl apply -f webservice2.yml
kubectl apply -f kube-secret.yml
kubectl rollout status deployment/webservice2-deploy
