FROM ubuntu:devel
MAINTAINER azrim

COPY ["setup.sh", "/"]

RUN DEBIAN_FRONTEND=noninteractive chmod +x /setup.sh && bash /setup.sh