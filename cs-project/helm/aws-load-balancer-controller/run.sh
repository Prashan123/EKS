#!/bin/bash -eu

# helm search repo
CONFIGURATION_PATH="$(dirname $0)/configurations"
NAMESPACE='cs-loadbalancers'
VERSION='1.4.1'

helm repo add eks https://aws.github.io/eks-charts
helm repo update

helm upgrade ${NAMESPACE} eks/aws-load-balancer-controller\
  --version ${VERSION} \
  --namespace ${NAMESPACE} \
  --create-namespace \
  --values ${CONFIGURATION_PATH}/values.yaml \
  --install --wait --timeout 300s ${@}
