#!bin/bash

# downloading the leatest release
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl"

# validate the binary (optional)
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl.sha256"

# validate
echo "$(cat kubectl.sha256)  kubectl" | shasum -a 256 --check

# make the kubectl binary executable
chmod +x ./kubectl

# move the kubectl binary to a file location on your system PATH
sudo mv ./kubectl /usr/local/bin/kubectl
sudo chown root: /usr/local/bin/kubectl

# test installation
kubectl version --client --output=yaml
