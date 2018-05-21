FROM alpine:3.7

MAINTAINER Katoma

ARG S6_OVERLAY_VERSION="v1.21.4.0"

# Install S6 overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_OVERLAY_VERSION}/s6-overlay-amd64.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-amd64.tar.gz -C / \
    && rm -rf /tmp/*

# Add default wanted packages
RUN apk add --no-cache \
      bash \
      ca-certificates
