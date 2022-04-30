FROM ubuntu:devel
MAINTAINER azrim

COPY ["setup.sh", "/"]

RUN curl -L https://github.com/AkihiroSuda/clone3-workaround/releases/download/v1.0.0/clone3-workaround.x86_64 -o /noclone3 && chmod +x /noclone3
SHELL ["/noclone3", "/bin/bash", "-c"]
RUN DEBIAN_FRONTEND=noninteractive chmod +x /setup.sh && bash /setup.sh
