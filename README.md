# Missing Image: kubectl

You just found the `kubectl` you were looking for.

# Usage

## In-Cluster

Start a shell with `kubectl` in your kubernetes cluster:

```sh
kubectl run -it guava --restart=Never --image missimg/kubectl:latest --command /bin/sh
```

## Local

Run `kubectl` commands locally:

```sh
docker run -it --rm -u $(id -u) -v $KUBECONFIG:/workspace/.kube/config missimg/kubectl:latest \
    get nodes
```

