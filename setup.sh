#!/bin/bash

# downloading istio
curl -L https://istio.io/downloadIstio | sh -

#
# the above command downloads the lates version of istio.
# to download specific version or architecture use the following command:
# ` curl -L https://istio.io/downloadIstio | ISTIO_VERSION=1.15.0 TARGET_ARCH=x86_64 sh - `
#

# you might have to change the version based on the ISTIO_VERSION you choosed
cd istio-1.15.0

#
# the installation directory contains:
#     - sample applications in samples/
#     - the istioctl client binary in the bin/ directory.
#

# add the istioctl client to your path 
export PATH=$PWD/bin:$PATH


# setup istio
istioctl install --set profile=demo -y

#
# ✔ Istio core installed
# ✔ Istiod installed
# ✔ Egress gateways installed
# ✔ Ingress gateways installed
# ✔ Installation complete
#

# add a namespace label to instruct Istio to automatically inject Envoy sidecar proxies when you deploy your application later
kubectl label namespace default istio-injection=enabled

#
# namespace/default labeled
#
