This is a minimal k8s container with just a simple page and a caddy server (to support HTTPS requests). 

It can be used to deploy a maintenance page and switch the service to it while we perform migrations on our services. Or just to host a single page for other purposes.

## How to install 

Update the `push.sh`, `deployment.yml` with the REPO where you're uploading your docker image (eg: https://hub.docker.com/) 
Along with some other settings like your email address on `runCaddy.sh`

If you use a balancer with a public static IP (eg: from google cloud), update the SERVICEIP on `balancer.yml`

create the deployment and service on k8s (if you use ingress, you don't need the balancer) 

```
kubectl create -f deployment.yml
kubectl create -f balancer.yml
```

Update your `site/index.html`

Run `push.sh` this will push a docker image to your repo and update your k8s deployment
