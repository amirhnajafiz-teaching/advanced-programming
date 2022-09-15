#!bin/bash

# download the latest release
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

# 
# to download a specific version, replace the $(curl -L -s https://dl.k8s.io/release/stable.txt)
# portion of the command with the specific version.
# for example, to download version v1.25.0 on Linux, type:
#   curl -LO https://dl.k8s.io/release/v1.25.0/bin/linux/amd64/kubectl
#

# validate the binary (optional)
curl -LO "https://dl.k8s.io/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl.sha256"

# validate
echo "$(cat kubectl.sha256)  kubectl" | sha256sum --check

#
# kubectl: OK
#

# install kubectl
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

# test
kubectl version --client --output=yaml    
