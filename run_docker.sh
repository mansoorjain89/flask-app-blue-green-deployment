#!/usr/bin/env bash

docker build -t flask-app-ecr .

docker tag flask-app-ecr:latest 905005439868.dkr.ecr.us-east-2.amazonaws.com/flask-app-ecr:v1

docker image ls

docker push 905005439868.dkr.ecr.us-east-2.amazonaws.com/flask-app-ecr:v1
