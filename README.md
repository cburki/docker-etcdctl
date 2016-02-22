Summary
-------

Etcdctl image that allow to execute etcd client (etcdctl) to interact with an
etcd cluster.


Build the image
---------------

To create this image, execute the following command in the docker-etcdctl folder.

    docker build \
        -t cburki/haproxy-confd
        .


Run the image
-------------

When you run this image you could specify the argument of the etcdctl tool. Here is
a sample giving the help argument.

    docker run \
        --rm \
        -i \
        -t \
        cburki/etcdctl:latest \
        -help
