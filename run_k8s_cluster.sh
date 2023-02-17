#!/bin/bash

docker build -t refaelsa/pingpong:flask-app .
minikube start
kubectl create deployment pingpong --image=refaelsa/pingpong:flask-app --replicas=4
kubectl expose deployment pingpong --type=LoadBalancer --port=5005 --target-port=5005
service_url=$(minikube service pingpong --url)

minikube tunnel & while [[ $(kubectl get svc pingpong -o jsonpath='{.status.loadBalancer.ingress[0].ip}') == "" ]]; do sleep 1; done
