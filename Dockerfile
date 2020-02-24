FROM alpine:latest
LABEL maintainer="Flavius Condurache <flavius.condurache@oriontechnologies.ro>"

RUN apk -U add openssl

ENV VERSION 0.7.4
# ENV DOWNLOAD_URL https://github.com/jwilder/docker-gen/releases/download/$VERSION/docker-gen-alpine-linux-amd64-$VERSION.tar.gz
ENV DOCKER_HOST unix:///tmp/docker.sock

COPY ./dist/alpine-linux/amd64/docker-gen /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/docker-gen"]
