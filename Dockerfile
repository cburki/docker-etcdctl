FROM debian:jessie
MAINTAINER Christophe Burki, christophe.burki@gmail.com

ENV ETCD_VERSION 2.2.5

# install etcd
ADD https://github.com/coreos/etcd/releases/download/v${ETCD_VERSION}/etcd-v${ETCD_VERSION}-linux-amd64.tar.gz /tmp/etcd.tar.gz
RUN tar zxvf /tmp/etcd.tar.gz -C /tmp && \
    mv /tmp/etcd-v${ETCD_VERSION}-linux-amd64/etcdctl /usr/local/bin/etcdctl && \
    chmod a+x /usr/local/bin/etcdctl

ENTRYPOINT ["/usr/local/bin/etcdctl"]
