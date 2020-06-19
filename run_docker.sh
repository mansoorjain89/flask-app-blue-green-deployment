#!/usr/bin/env bash

docker build -t flask-app-ecr .

docker tag flask-app-ecr:latest 905005439868.dkr.ecr.us-east-2.amazonaws.com/flask-app-ecr:v2

docker image ls

aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 905005439868.dkr.ecr.us-east-2.amazonaws.com

docker push 905005439868.dkr.ecr.us-east-2.amazonaws.com/flask-app-ecr:v2
