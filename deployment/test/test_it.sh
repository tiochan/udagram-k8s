#!/bin/bash

kubectl apply -f example-configmap.yaml
kubectl get configmaps
kubectl apply -f secret-configmap.yaml
kubectl get secrets
kubectl apply -f pod-with-configmap-and-secrets.yaml
kubectl get pods

# WAIT...

echo "Wait some time to let pod up, then enter into its cli:"
echo "kubectl exec -it pod-env-var sh"
echo "env"

# Then clean
kubectl delete secret example-secrets
kubectl delete configmap udagram-env-vars
kubectl delete pod pod-env-var


## OUTPUT FROM sh env:
# $ kubectl exec -it pod-env-var sh
# kubectl exec [POD] [COMMAND] is DEPRECATED and will be removed in a future version. Use kubectl exec [POD] -- [COMMAND] instead.
# # env
# POSTGRES_USERNAME=sgomez
# KUBERNETES_SERVICE_PORT=443
# KUBERNETES_PORT=tcp://10.100.0.1:443
# HOSTNAME=pod-env-var
# URL=http://localhost:8100
# HOME=/root
# MY_PASSWORD=MY_PASSWORD=3i4j1o2ij5lkdasfd
#
# TERM=xterm
# KUBERNETES_PORT_443_TCP_ADDR=10.100.0.1
# NGINX_VERSION=1.7.9-1~wheezy
# PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# AWS_BUCKET=test-293804951370-dev
# KUBERNETES_PORT_443_TCP_PORT=443
# POSTGRES_HOST=cdr.ccjvshc5fodm.eu-west-1.rds.amazonaws.com
# KUBERNETES_PORT_443_TCP_PROTO=tcp
# AWS_PROFILE=default
# AWS_REGION=eu-west-1
# KUBERNETES_SERVICE_PORT_HTTPS=443
# KUBERNETES_PORT_443_TCP=tcp://10.100.0.1:443
# KUBERNETES_SERVICE_HOST=10.100.0.1
# PWD=/
# POSTGRES_DB=postgres
