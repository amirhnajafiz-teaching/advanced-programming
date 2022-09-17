#!bin/bash

# deploy book info
kubectl apply -f samples/bookinfo/platform/kube/bookinfo.yaml

# verify everything is working correctly up to this point. 
# Run this command to see if the app is running inside the cluster and serving HTML pages by checking for the page title in the response
kubectl exec "$(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}')" -c ratings -- curl -sS productpage:9080/productpage | grep -o "<title>.*</title>"

# associate this application with the Istio gateway
kubectl apply -f samples/bookinfo/networking/bookinfo-gateway.yaml

# ensure that there are no issues with the configuration
istioctl analyze

# view dashboard
kubectl apply -f samples/addons

kubectl rollout status deployment/kiali -n istio-system

# access dashboard
istioctl dashboard kiali
