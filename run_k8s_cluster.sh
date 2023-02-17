#!/bin/bash

docker build -t refaelsa/pingpong:flask-app .
minikube start
kubectl create deployment pingpong --image=refaelsa/pingpong:flask-app --replicas=4
kubectl expose deployment pingpong --type=LoadBalancer --port=5005 --target-port=5005
service_url=$(minikube service pingpong --url)

#once the k8s is up and running. open a new terminal and run
#minikube tunnel
#then run the the script 
#python3 testServer.py