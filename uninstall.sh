#!bin/bash

# the Istio uninstall deletes the RBAC permissions and all resources hierarchically 
# under the istio-system namespace. 
# it is safe to ignore errors for non-existent resources because they may have been deleted hierarchically.
kubectl delete -f samples/addons

istioctl uninstall -y --purge

# the istio-system namespace is not removed by default. If no longer needed, use the following command to remove it
kubectl delete namespace istio-system
