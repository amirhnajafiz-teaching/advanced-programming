<h1 align="center">
Istio
</h1>

Create and test **Istio** service mesh on **Minikube**.

## Pre requirements

- **Curl**
  - You need to install _curl_ on your local system in order to download **Minikube** and **Istio**.
  - Install it on your system with [these](https://github.com/amirhnajafiz/istio/tree/master/curl) scripts.
- **Docker**
  - For running Minikube on your system, you need to have _Docker_ installed on your local system.
- **Kubernetes**
  - For executing **Istio** and **Minikube** you need to use _Kubernetes_ command line.
  - Install it on your system with [these](https://github.com/amirhnajafiz/istio/tree/master/kubectl) scripts.

## Start

Make sure to have Minikube running on your local system. If you don't have Minikube on your system, you
can run the following scripts to install and execute it on your system.

- [Minikube on Linux](https://github.com/amirhnajafiz/istio/blob/master/minikube/linux/setup.sh)
- [Minikube on MacOS](https://github.com/amirhnajafiz/istio/blob/master/minikube/macos/setup.sh)

After you installed and set up Minikube, execute the set up script.

```shell
chmod +x setup.sh

./setup.sh
```

The following script will install Istio on your system, and will set a namespace on your Minikube.

## Execute

Now that you have installed all of the necessary dependencies, let's execute a demo on **Minikube**. Execute
the test script.

```shell
chmod +x test.sh

./test.sh
```

The following script downloads a demo image named ```samples/bookinfo/platform/kube/bookinfo.yaml``` and runs it
on **Minikube**. After that it will show you a status of **Minikube** pods.

After that it will check the **Istio** status ```istioctl analyze```, and then brings up **Istio** dashboard for you.

## Stop

When you are done with everything, execute the uninstall script to clear everything.

```shell
chmod +x uninstall.sh

./uninstall.sh
```
