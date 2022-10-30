#!/bin/bash
export KUBERNETES_API_SERVER_ADDRESS=192.168.121.5
export KUBERNETES_API_SERVER_PORT=6443

helm template --namespace kube-system cilium cilium/cilium \
    --version 1.12.2 \
    --set cluster.id=0 \
    --set cluster.name=my-cluster \
    --set encryption.nodeEncryption=false \
    --set k8sServiceHost=${KUBERNETES_API_SERVER_ADDRESS} \
    --set k8sServicePort=${KUBERNETES_API_SERVER_PORT} \
    --set kubeProxyReplacement=strict \
    --set operator.replicas=1 \
    --set serviceAccounts.cilium.name=cilium \
    --set serviceAccounts.operator.name=cilium-operator \
    --set tunnel=vxlan \
    --set securityContext.privileged=true |
    tee cilium.yaml > /dev/null
