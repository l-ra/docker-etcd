FROM ubuntu:18.04
LABEL maintainer "l-ra <lra@r73.info>"

RUN apt update \
    && apt install -y etcd \
    && mkdir -p /etcd/data \
    && chown 1001 /etcd/data

COPY 

ENV ETCD_DATA_DIR="/etcd/data" \

EXPOSE 2379 2380

WORKDIR /etcd/data
USER 1001
ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "etcd" ]
