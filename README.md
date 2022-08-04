# Simple test pod

## Tools

- AWSCLI
- netcat
- python3
- python3-pip
- curl
- dnsutils

## Options

by default use `kubectl` however if you have Openshift could you change `CMD=oc` or into `Makefile` uncomment `#CMD :=oc`

```
make docker/build
make kube/pod
make kube/deployment
make kube/exec
make kube/delete
```
