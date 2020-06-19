#!/bin/bash

aws eks --region us-east-2 update-kubeconfig --name udacity_capstone

kubectl apply -f ./kube_deployment_green.yaml

kubectl expose deployment flask-app-green --type=LoadBalancer --name=flask-app-green

kubectl get service
