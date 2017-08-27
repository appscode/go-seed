# Uninstall Go-seed
Please follow the steps below to uninstall Go-seed:

1. Delete the various objects created for Go-seed operator.
```console
$ ./hack/deploy/uninstall.sh
+ kubectl delete deployment -l app=go-seed -n kube-system
deployment "go-seed" deleted
+ kubectl delete service -l app=go-seed -n kube-system
service "go-seed" deleted
+ kubectl delete serviceaccount -l app=go-seed -n kube-system
No resources found
+ kubectl delete clusterrolebindings -l app=go-seed -n kube-system
No resources found
+ kubectl delete clusterrole -l app=go-seed -n kube-system
No resources found
```

2. Now, wait several seconds for Go-seed to stop running. To confirm that Go-seed operator pod(s) have stopped running, run:
```console
$ kubectl get pods --all-namespaces -l app=go-seed
```
