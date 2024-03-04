ARG ALPINE_VERSION
FROM alpine:${ALPINE_VERSION}

# Repos where MongoDB can be found
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/main' >> /etc/apk/repositories
RUN echo 'http://dl-cdn.alpinelinux.org/alpine/v3.9/community' >> /etc/apk/repositories

# Essentials
RUN apk update \
 && apk upgrade \
 && apk add --no-cache \
    wget \
    gcc \
    make \
    linux-headers \
    zlib-dev \
    libffi-dev \
    openssl-dev \
    musl-dev \
    curl \
    jq \
    nano \
    bash \
    python3 \
    py3-pip \
    aws-cli

# Database
ARG DATABASE_FLAVOUR
RUN apk add --no-cache ${DATABASE_FLAVOUR}

CMD ["/bin/bash", "-c"]