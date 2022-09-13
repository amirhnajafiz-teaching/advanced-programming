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
