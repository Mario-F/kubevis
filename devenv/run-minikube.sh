#!/bin/sh

export DATE_TAG=$(date +%s)

docker build . -t kubevis-dev:${DATE_TAG}

kubectl apply -f ./devenv/kubevis-rbac.yaml
envsubst < ./devenv/kubevis-deployment.yaml | kubectl apply -f -

sleep 2
kubectl port-forward deployment/kubevis 3000:3000
