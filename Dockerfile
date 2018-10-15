FROM alpine:latest

RUN set -xe && \
    apk add --update --no-cache python py-pip nano git && \
    rm -rf /var/cache/apk/*
RUN pip2 install icloudpd
RUN adduser -D -h /home/user -u 1000 user
USER user
