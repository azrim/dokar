FROM ubuntu:latest
MAINTAINER azrim

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Jakarta

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install Debian packages
RUN apt-get update -qqy && apt-get upgrade -qqy && apt-get install --no-install-recommends -y make git gcc curl zip python libssl-dev bc jq flex tzdata libssl-dev cpio openjdk-8-jre && apt-get autoremove -qqy && apt-get autoclean -qqy
