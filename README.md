[![CircleCI](https://circleci.com/gh/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/4/workflows/8a40e434-f945-4ea0-ba8d-216dcc285105)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

---

## Included Files

* [app.py](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/app.py):
  * Flask app that provides API for prediction and speaks with sklearn model in the backend
* [Makefile](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/Makefile)
  * holds the commands to setup, install, test and lint the source code
* [Dockerfile](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/Dockerfile):
  * holds the container description for the runnable application
* [requirements.txt](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/requirements.txt): 
  * Python packets to install in the virtualenv
* [run_docker.sh](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/run_docker.sh):
  * Build and run Docker container with app.py
* [upload_docker.sh](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/upload_docker.sh):
  * Upload the successful Docker Image to DockerHub for easy use in Kubernetes Pod
* [run_kubernetes.sh](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/run_kubernetes.sh):
  * download DockerHub Image into local Kubernetes Pod
* [make_prediction.sh](https://github.com/herrfeder/Udacity-Cloud-Devops-Nanodegree-Project-4-ML-Microservice-Kubernetes/blob/main/make_prediction.sh):
  * Test the running application against an example REST-Requst


## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`


