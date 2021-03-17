FROM ubuntu:latest
MAINTAINER azrim

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Jakarta

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install Debian packages
RUN apt-get update -qqy && apt-get upgrade -qqy && apt-get install --no-install-recommends -y bc binutils-dev bison ca-certificates curl flex gcc git jq make python openssl python ssh sshpass tzdata && apt-get autoremove -qqy && apt-get autoclean -qqy
