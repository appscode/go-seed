#!/bin/bash
set -x

kubectl delete deployment -l app=go-seed -n kube-system
kubectl delete service -l app=go-seed -n kube-system

# Delete RBAC objects, if --rbac flag was used.
kubectl delete serviceaccount -l app=go-seed -n kube-system
kubectl delete clusterrolebindings -l app=go-seed -n kube-system
kubectl delete clusterrole -l app=go-seed -n kube-system
