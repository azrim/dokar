#!/bin/bash

TZ=Asia/Jakarta
ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

apt-get update && apt-get install --no-install-recommends -y aria2 bc bison ca-certificates cpio curl file gcc git lib{c6,c,ssl,xml2}-dev make python2 python3 unzip zip openjdk-8-jdk
apt-get autoremove -qqy && apt-get autoclean -qqy && rm -rf /var/lib/apt/lists/*
curl -L https://github.com/AkihiroSuda/clone3-workaround/releases/download/v1.0.0/clone3-workaround.x86_64 -o /noclone3 && chmod +x /noclone3
