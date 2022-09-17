#!bin/bash

# to install the latest minikube stable release on x86-64 Linux using binary download
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

# start minikube
# from a terminal with administrator access (but not logged in as root), run
minikube start
