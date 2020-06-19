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

3. `Dockerfile`: File to dockerize the app.py application
4. `Makefile`: Make file to create shortcuts to run commands
5. `app.py`: File where the app code is written

7. `requirements.txt`: Dependent pkgs to be installed on docker containers
8. `run_docker.sh`: Script with docker commands to create docker image


11. `sample_outputs`: Model expected outputs

# Sample Output



