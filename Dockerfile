FROM ubuntu:latest
MAINTAINER azrim

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Jakarta

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install Debian packages
RUN apt-get update -qqy && apt-get upgrade -qqy && apt-get install --no-install-recommends -y bc bison ca-certificates curl flex gcc git jq libxml2 libtinfo5 libc6-dev libssl-dev libstdc++6 make openjdk-8-jre openssl python ssh tzdata wget zip zstd && apt-get autoremove -qqy && apt-get autoclean -qqy
