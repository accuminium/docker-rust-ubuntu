FROM ubuntu:16.04

RUN apt-get update && \
    apt-get -y install build-essential curl
#RUN yum update -y && \
#    yum group install "Development Tools" -y && \
#    yum clean all

ENV RUSTUP_HOME=/usr/local/rustup CARGO_HOME=/usr/local/cargo
ENV PATH $CARGO_HOME/bin:$PATH

RUN mkdir -p "$CARGO_HOME" && mkdir -p "$RUSTUP_HOME" && \
    curl https://sh.rustup.rs -sSf | sh -s -- -y --default-toolchain stable && \
    chmod -R a=rwX $CARGO_HOME

WORKDIR /source
