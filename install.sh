curl -L https://git.io/getLatestIstio | sh -
cd istio-*
./bin/istioctl version
./bin/istioctl kube-inject -f ../istio_install/samples/bookinfo/platform/kube/bookinfo.yaml | kubectl apply -n bookstore -f -
