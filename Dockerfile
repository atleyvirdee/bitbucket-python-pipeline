FROM python:3.6-alpine
MAINTAINER Atley Virdee

# Install base dependencies
RUN apk -v --update add \
    groff \
    jq \
    less \
    mailcap \
    zip

RUN pip install awscli

WORKDIR ~
ENTRYPOINT /bin/bash