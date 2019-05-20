#!/bin/bash
# Create a Pod
kubectl apply -f ./run-my-nginx.yaml
kubectl get pods -l run=my-nginx -o wide

# Create a Service
kubectl expose deployment/my-nginx
kubectl get services -o wide

# Expose a Pod publicly
kubectl edit service my-nginx
#kubectl expose deployment/my-nginx --type=NodePort
