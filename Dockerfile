FROM ubuntu:latest AS builder

RUN apt-get update && \
    apt-get -y install curl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN curl -L https://github.com/rust-lang/mdBook/releases/download/v0.4.8/mdbook-v0.4.8-x86_64-unknown-linux-gnu.tar.gz | tar -C /opt -xvz

WORKDIR /build
COPY . .
RUN /opt/mdbook build

FROM nginx:alpine

COPY --from=builder /build/book /usr/share/nginx/html
