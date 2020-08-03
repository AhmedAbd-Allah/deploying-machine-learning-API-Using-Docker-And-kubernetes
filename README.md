[![CircleCI](https://circleci.com/gh/AhmedAbd-Allah/deploying-machine-learning-API-Using-Docker-And-kubernetes.svg?style=svg)](https://circleci.com/gh/AhmedAbd-Allah/deploying-machine-learning-API-Using-Docker-And-kubernetes)

# Deploying-Machine-Learning-Inference-API-Using-Docker-And-Kubernetes

In this project,I worked on operationalizing microservices by deploying a machine learning inference API using docker and kubernetes.

I have been provided with a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the [the data source site](https://www.kaggle.com/c/boston-housing). This project demonstrates the ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup the Environment
* Run `git clone https://github.com/AhmedAbd-Allah/deploying-machine-learning-API-Using-Docker-And-kubernetes.git`
* Run `cd deploying-machine-learning-API-Using-Docker-And-kubernetes`
* Run `python3 -m venv ~/.devops`
* Run `source ~/.devops/bin/activate`
* Run `make install` to install the necessary dependencies

### Installing Docker
* [Create docker account](https://hub.docker.com/)
* Install the lastest [stable release](https://docs.docker.com/v17.12/install/)
* Run `docker --version`

### Installing Kubernetes
#### Mac
* Run `brew cask install virtualbox` to install VirtualBox
* Run `brew cask install minikube` to install minikube
#### Windows
* Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) 
* Install [minikube](https://kubernetes.io/docs/tasks/tools/install-minikube/)

### Configure Kubernetes to Run Locally
* run `minikube start`

### Running `app.py`
1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


### Kubernetes Steps
* Setup and Configure Docker locally 
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Contained Files
1. .circleci: contains config.yml file which includes the steps to be executed by circleci build
2. model data: data to be used in prediction
3. output_text_files: contains logs of running run_docker.sh and run_kubernetes.sh scripts
4. Dockerfile: docker file used to build docker image of the app
5. Makefile: contains steps to build and lint the app
6. README: contains information about the project and how to build it
7. app.py: web app entry point
8. make_predictions.sh: script to be run to make predictions of housing prices in Boston
9. requirements.txt: file containing the required packages & libraries to be installed to be able to run the app
10. run_docker.sh: file containing commands used to build a docker image of the app
11. run_kubernetes.sh: files containing commands used to run the app using kubernetes
12.upload_docker.sh: file containing commands used to upload th app docker image to docker hub.
