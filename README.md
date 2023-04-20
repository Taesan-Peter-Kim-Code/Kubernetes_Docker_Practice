# Kubernetes_Docker_Practice
This is a project for learning and using Kubernetes and Docker

## Download Docker

## Kubernetes setup
Kubernetes can be enabled from the Kubernetes settings panel through Docker Desktop

## Deploying and accessing applications
- On the host of Docker Desktop, open a terminal and run:
```
$ kubectl apply -f tutorial.yaml
service/tutorial created
deployment.apps/tutorial created
```

- Check service:
```
$ kubectl get svc
NAME       TYPE   	CLUSTER-IP     EXTERNAL-IP   PORT(S)       AGE
kubernetes ClusterIP  	10.96.0.1      <none>        443/TCP       118m
tutorial   LoadBalancer 10.98.217.243  localhost     80:31575/TCP  12m
```

Services of type LoadBalancer are exposed outside the Kubernetes cluster. Opening a browser and navigating to localhost:80 displays the Docker tutorial.

What needs to be noticed here is that service access is trivial as if running directly on the host. Developers do not need to concern themselves with any additional configurations.

This is due to Docker Desktop taking care of exposing service ports on the host to make them directly accessible on it. This is done via the additional controller installed previously.

**Vpnkit-controller** is a port forwarding service which opens ports on the host and forwards connections transparently to the pods inside the VM. It is being used for forwarding connections to LoadBalancer type services deployed in Kubernetes.
