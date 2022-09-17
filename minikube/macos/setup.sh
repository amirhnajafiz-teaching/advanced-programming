#!bin/bash

# to install the latest minikube stable release on x86-64 macOS using binary download
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-darwin-amd64
sudo install minikube-darwin-amd64 /usr/local/bin/minikube

# starting minikube.
# from a terminal with administrator access (but not logged in as root), run
minikube start
