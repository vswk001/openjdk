FROM openjdk:8u212-jdk-alpine3.9

MAINTAINER VSWK <vswk001@gmail.com>

RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
            fontconfig \
            bash \
 && apk add --update ttf-dejavu \
 && fc-cache --force \
 && rm -rf /var/cache/apk/*
