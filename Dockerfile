FROM alpine

# use curl to get certificate verification
RUN apk add -q --update curl

RUN curl -L - https://dl.k8s.io/v1.9.7/kubernetes-client-linux-amd64.tar.gz \
    | tar -xz -C /usr --strip-components=2

ENTRYPOINT ["/usr/bin/kubectl"]
