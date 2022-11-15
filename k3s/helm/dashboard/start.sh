#!/bin/bash
export POD_NAME=$(kubectl get pods -n admin-tools -l "app.kubernetes.io/name=kubernetes-dashboard,app.kubernetes.io/instance=kubernetes-dashboard" -o jsonpath="{.items[0].metadata.name}")
echo https://127.0.0.1:8443/
kubectl -n admin-tools port-forward $POD_NAME 8443:8443