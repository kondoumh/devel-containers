
```
$ helm upgrade --install kubernetes-dashboard stable/kubernetes-dashboard --namespace kube-system \
--set rbac.clusterAdminRole=true --wait
```