FROM ubuntu:latest
MAINTAINER azrim

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Jakarta

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install Debian packages
RUN apt-get update -qqy && apt-get upgrade -qqy && apt-get install --no-install-recommends -y bc binutils-dev bison ca-certificates clang curl file flex gcc g++ git libelf-dev libssl-dev make python texinfo u-boot-tools xz-utils zlib1g-dev && apt-get autoremove -qqy && apt-get autoclean -qqy
