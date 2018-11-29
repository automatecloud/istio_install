#!/usr/bin/env bash
curl -L https://git.io/getLatestIstio | sh -
./istio-*/bin/istioctl version
./istio-*/bin/istioctl kube-inject -f istio_install/samples/bookinfo/platform/kube/bookinfo.yaml -o istio_install/samples/bookinfo/platform/kube/bookinfowithsidecar.yaml
kubectl apply -n bookstore -f istio_install/samples/bookinfo/platform/kube/bookinfowithsidecar.yaml
