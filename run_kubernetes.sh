#!/bin/bash

aws eks --region us-east-2 update-kubeconfig --name udacity_capstone

kubectl apply -f ./kube_deployment_blue.yaml

kubectl expose deployment flask-app-blue --type=LoadBalancer --name=flask-app-blue

sleep 15

kubectl get service
