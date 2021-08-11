FROM archlinux:base-devel
MAINTAINER azrim

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Asia/Jakarta

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Install arch packages
RUN curl -LO "https://repo.archlinuxcn.org/x86_64/glibc-linux4-2.33-4-x86_64.pkg.tar.zst" && bsdtar -C / -xvf "glibc-linux4-2.33-4-x86_64.pkg.tar.zst"
RUN pacman -Sy && pacman -S git bc inetutils python2 zip jdk-openjdk lld --noconfirm
