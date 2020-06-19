# Introduction:

This project is to learn and practice the skills learned as part of Udacity's Cloud DevOps Nano Degree Program. This project is deployed using a CI/CD pipeline. This pipeline consists of below stages:

1. `Build` - Create a venv in Jenkins to install required python pkgs
2. `lint`  - To check through linting both python & Dockerfile for any bad codes, Using pylint and hadolint pkgs fo
3. `Dockerize` - After the initial checks are completed, The code is packaged using Docker and pushed into AWS Container registry (ECR)
4. `Deploy` - The image is pulled from ECR and deployed into AWS Kubernetes Service (EKS)

# Instructions:

### Installations inside Jenkins Server:
1. AWS Cli configured
2. Docker
3. Jenkins Plugins such as BlueOcean, AWS, pythonvnenv and so on.

### Creating EKS Clusters

EKS clusters are created using AWS's CloudFormation quickstart template using right parameters - https://docs.aws.amazon.com/quickstart/latest/amazon-eks-architecture/welcome.html

The EKS clusters are launched in new VPC.

# File Summary:

1. `Dockerfile`: File to dockerize the app.py application
2. `Makefile`: Make file to create shortcuts to run commands
3. `Jenkinsfile`: To define various stages and steps on jenkins pipeline
4. `app.py`: File where the app code is written
5. `requirements.txt`: Dependent pkgs to be installed on docker containers
6. `run_docker.sh`: Script with docker commands to create docker image
7. `cf_eks.yaml`: CloudFormation script to create EKS clusters in new VPC
8. `cf_eks_parameters.json`: CloudFormation script parameters to create EKS clusters in new VPC
9. `create.sh` & `update.sh`: Little bash script to run cloudformation script
10. `kube_deployment_blue.yaml`: Kube deployment script for blue version of app
11. `kube_deployment_green.yaml`: Kube deployment script for green version of app
12. `kube_service.yaml`: Kube deployment script to create and expose service

# Sample Output

```
$ kubectl get deployment
NAME              READY   UP-TO-DATE   AVAILABLE   AGE
flask-app-blue    1/1     1            1           176m
flask-app-green   1/1     1            1           120m
```

```
$ kubectl get pods
NAME                               READY   STATUS    RESTARTS   AGE
flask-app-blue-6b447d5f8b-j49gp    1/1     Running   0          174m
flask-app-green-7bcc6c55c7-nkfv6   1/1     Running   0          118m
```

```
$ kubectl get service
NAME              TYPE           CLUSTER-IP      EXTERNAL-IP                                                               PORT(S)          AGE
flask-app-blue    LoadBalancer   172.20.17.132   ad814765ceea144d999bf5b5ab43c65e-1955595653.us-east-2.elb.amazonaws.com   5000:32063/TCP   132m
flask-app-green   LoadBalancer   172.20.98.104   ae460b8f7a48143e4a918ba87fed96aa-1434308515.us-east-2.elb.amazonaws.com   5000:32111/TCP   117m
kubernetes        ClusterIP      172.20.0.1      <none>                                                                    443/TCP          8h
```

```
$ curl http://ae460b8f7a48143e4a918ba87fed96aa-1434308515.us-east-2.elb.amazonaws.com:5000
Hello, World!, This is my Cloud Operations learning pipeline !!  
```
