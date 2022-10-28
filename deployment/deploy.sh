#!/bin/sh

# Load env vars and secrets
kubectl apply -f env-configmap.yaml
kubectl apply -f env-secrets.yaml
kubectl apply -f env-aws-secrets.yaml

# Deploy components and set up autoscaling capabilities
kubectl apply -f backend-feed-deployment.yaml
kubectl apply -f backend-feed-servce.yaml
kubectl autoscale deployment backend-feed --cpu-percent=75 --min=2 --max=10

kubectl apply -f backend-user-deployment.yaml
kubectl apply -f backend-user-servce.yaml
kubectl autoscale deployment backend-user --cpu-percent=75 --min=2 --max=10

kubectl apply -f reverseproxy-deployment.yaml
kubectl apply -f reverseproxy-service.yaml
kubectl autoscale deployment reverseproxy --cpu-percent=75 --min=2 --max=10

kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml
kubectl autoscale deployment frontend --cpu-percent=75 --min=2 --max=10

# Expose public IPs
kubectl expose deployment frontend --type=LoadBalancer --name=publicfrontend --port=80
kubectl expose deployment reverseproxy --type=LoadBalancer --name=publicreverseproxy --port=8080

kubectl get services

echo "Add public IP of the reverseproxy to frontend's config:"
echo "change /udagram-frontend/src/environments/*.ts"
