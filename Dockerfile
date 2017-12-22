FROM hypriot/rpi-alpine:latest

MAINTAINER Jordi Franco <stealthizer@gmail.com>

RUN apk add --no-cache python3 && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    rm -r /root/.cache && \
    rm -rf /var/cache/apk/*

ADD Dockerfile /Dockerfile
