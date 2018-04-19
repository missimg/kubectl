FROM alpine

RUN apk add -q --update openssl ca-certificates

RUN wget -q -O - https://dl.k8s.io/v1.9.7/kubernetes-client-linux-amd64.tar.gz \
    | tar -xz -C /usr --strip-components=2

ENTRYPOINT ["/usr/bin/kubectl"]
