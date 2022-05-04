FROM ubuntu:latest
MAINTAINER azrim

COPY ["setup.sh", "/"]

ADD https://github.com/AkihiroSuda/clone3-workaround/releases/download/v1.0.0/clone3-workaround.x86_64 /clone3-workaround
RUN chmod 755 /clone3-workaround
SHELL ["/clone3-workaround","/bin/sh", "-c"]
RUN DEBIAN_FRONTEND=noninteractive chmod +x /setup.sh && bash /setup.sh
