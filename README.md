# Missing Image: kubectl

You just found the `kubectl` you were looking for.

# Usage

## In-Cluster

Start a shell with `kubectl` in your kubernetes cluster:

```bash
K8S_VERSION=1.13
kubectl run -it --restart=Never --image missimg/kubectl:$K8S_VERSION --command /bin/sh my-kubectl-pod
```

## Local

Run `kubectl` commands locally:

```bash
KUBECONFIG=$HOME/.kube/config
K8S_VERSION=1.13
docker run -it --rm -u $(id -u) -v $KUBECONFIG:/workspace/.kube/config missimg/kubectl:$K8S_VERSION \
    get nodes
```

