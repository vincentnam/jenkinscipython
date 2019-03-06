FROM jenkinsci/blueocean:latest

USER root

RUN apk add --no-cache --update \
    python3 \
    python-dev \
    py-pip \
    build-base \
    && pip install virtualenv \
    && rm -rf /var/cache/apk/*

USER jenkins