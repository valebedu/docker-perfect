FROM valentinbercot/swift:latest

MAINTAINER Valentin Bercot <valent1.bercot@gmail.com>

# Install dependencies
RUN apt-get update && \
    apt-get install -y \
    git \
    libssl-dev \
    openssl \
    uuid-dev && \
    rm -rf /var/lib/apt/lists/*

# Set Workdir to root
WORKDIR /
