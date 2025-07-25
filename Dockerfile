# Copyright (c) 2020-2024 Vincent A. Cicirello
# https://www.cicirello.org
# Source repository: https://github.com/cicirello/pyaction-lite
# Source licensed under the MIT License: https://github.com/cicirello/pyaction-lite/blob/master/LICENSE
FROM alpine:3.22.1
LABEL maintainer="development@cicirello.org" \
    org.opencontainers.image.description="A base Docker image for Github Actions implemented in Python" \
    org.opencontainers.image.authors="Vincent A Cicirello, development@cicirello.org, https://www.cicirello.org/" \
    org.opencontainers.image.source="https://github.com/cicirello/pyaction-lite" \
    org.opencontainers.image.title="pyaction-lite" 
RUN apk --no-cache add python3
