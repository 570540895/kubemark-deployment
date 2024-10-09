#!/usr/bin/env bash
kubectl create namespace kubemark
kubectl create configmap "node-configmap" --namespace="kubemark" --from-file=kernel.monitor="kernel-monitor.json"
kubectl create secret generic "kubeconfig" --type=Opaque --namespace="kubemark" \
--from-file=kubelet.kubeconfig=/root/.kube/config  \
--from-file=kubeproxy.kubeconfig=/root/.kube/config  \
--from-file=npd.kubeconfig=/root/.kube/config  \
--from-file=heapster.kubeconfig=/root/.kube/config  \
--from-file=cluster_autoscaler.kubeconfig=/root/.kube/config  \
--from-file=dns.kubeconfig=/root/.kube/config

