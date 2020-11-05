# Docker Image for Rust on Ubuntu

## Usage

You can use this image to build Cargo packages for Ubuntu.  Simply change to the root directory
of a Cargo project, create an appropriate target directory
```sh
mkdir -p target/ubuntu
```
and invoke Cargo in the container
```sh
docker run \
    --user $(id -u):$(id -g) \
    -t --rm \
    -v "$PWD:/source" \
    -v "$PWD/target/ubuntu:/source/target" \
    accuminium/rust-ubuntu:20.10_stable \
    cargo build --release
```
Adapt the version of the image (`20.10_stable` in this example) as needed.
