# Missing Image: kubectl

You just found the `kubectl` you were looking for.

# Usage

## In-Cluster

Start a shell with `kubectl` in your kubernetes cluster:

```bash
kubectl run -it guava --restart=Never --image missimg/kubectl:latest --command /bin/sh
```

## Local

Run `kubectl` commands locally:

```bash
docker run -it --rm -u $(id -u) -v $KUBECONFIG:/workspace/.kube/config missimg/kubectl:latest \
    get nodes
```

