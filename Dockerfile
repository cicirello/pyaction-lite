# Copyright (c) 2020 Vincent A. Cicirello
# https://www.cicirello.org
# Source repository: https://github.com/cicirello/pyaction-lite
# Source licensed under the MIT License: https://github.com/cicirello/pyaction-lite/blob/master/LICENSE
FROM alpine:3.13.4
LABEL maintainer="development@cicirello.org" \
    org.opencontainers.image.description="A base Docker image for Github Actions implemented in Python" \
    org.opencontainers.image.authors="Vincent A Cicirello, development@cicirello.org, https://www.cicirello.org/" \
    org.opencontainers.image.source="https://github.com/cicirello/pyaction-lite" \
    org.opencontainers.image.title="pyaction-lite" 
RUN apk update && apk add \
    python3 \
    && rm -rf /var/cache/apk/*
