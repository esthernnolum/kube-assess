# kube-assess

#Task

Create a web service outside your Kubernetes (k8s) cluster. Then, configure an ingress rule that directs incoming traffic to reach this external web service.

Within your Kubernetes cluster, deploy another web service. Implement user authentication for webservice2 using Kubernetes secrets. Now, let's set up the ingress rules in such a way that:

Requests to the "/subdomain1" path require user authentication.

Requests to the "/subdomain2" path do not require authentication and can connect to webservice2 freely.
