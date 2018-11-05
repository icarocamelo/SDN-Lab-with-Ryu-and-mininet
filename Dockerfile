ARG BASE_IMAGE=debian:stretch-slim 
FROM ${BASE_IMAGE} 
MAINTAINER Icaro Camelo <icarorvc@gmail.com> 
USER root 
WORKDIR /root
COPY  docker-entry-point /docker-entry-point
RUN apt-get update && apt-get install -y --no-install-recommends \
    openvswitch-switch \
    curl \
    iproute2 \
    iputils-ping \
    mininet \
    net-tools \
    tcpdump \
    vim \
    x11-xserver-utils \
    xterm \
    git \
    python-setuptools \ 
    python-dev build-essential \
    easy_install pip \
    pip install ryu \
    git clone git://github.com/osrg/ryu.git \
    cd ryu; python ./setup.py install \
 && rm -rf /var/lib/apt/lists/* \
 && chmod +x /docker-entry-point
EXPOSE 6633 6653 6640 ENTRYPOINT [ "/docker-entry-point" ] 
