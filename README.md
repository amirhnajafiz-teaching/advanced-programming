<h1 align="center">
Istio
</h1>

Create and test **Istio** service mesh on **Minikube**.

## What is Istio?

Istio is an open source service mesh that layers transparently onto existing
distributed applications. Istio’s powerful features provide a uniform and more efficient way to secure, connect, and monitor services. 

Istio extends Kubernetes to establish a programmable, application-aware network using the powerful 
Envoy service proxy. Working with both Kubernetes and traditional workloads, 
Istio brings standard, universal traffic management, telemetry, and security to complex deployments.

## What is Service Mesh?

Modern applications are typically architected as distributed collections of microservices, 
with each collection of microservices performing some discrete business function. A service mesh is a dedicated 
infrastructure layer that you can add to your applications. 
It allows you to transparently add capabilities like observability, traffic management, and security, without
adding them to your own code. The term “service mesh” describes both the type of software you use to implement this pattern, 
and the security or network domain that is created when you use that software.

As the deployment of distributed services, such as in a Kubernetes-based system, grows in size and complexity, 
it can become harder to understand and manage. Its requirements can include discovery, load balancing, 
failure recovery, metrics, and monitoring. A service mesh also often addresses more complex operational 
requirements, like A/B testing, canary deployments, rate limiting, access control, encryption, and end-to-end authentication.

Service-to-service communication is what makes a distributed application possible. Routing this communication, 
both within and across application clusters, becomes increasingly complex as the number of services grow. Istio helps 
reduce this complexity while easing the strain on development teams.



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
