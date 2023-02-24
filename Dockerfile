FROM ubuntu:20.04

# Install Boilerplate Workspace
ARG DEBIAN_FRONTEND=noninteractive
RUN : \
    && echo "Install Boilerplate Workspace" \
    && apt-get update -y \
    && echo "------------------------------------------------------ Install Python" \
    && apt-get install -y python-is-python3 python3-pip \
    && echo "------------------------------------------------------ Install Editor" \
    && apt-get install -y vim \
    && echo "------------------------------------------------------ Install Git" \
    && apt-get install -y git \
    && apt-get clean \
    && echo "------------------------------------------------------ Install Web Terminal" \
    && apt-get install -y build-essential cmake libjson-c-dev libwebsockets-dev \
    && cd /usr/local \
    && git clone https://github.com/tsl0922/ttyd.git \
    && cd ttyd; mkdir build; cd build \
    && cmake ..; make; make install \
    && echo "------------------------------------------------------ Add User" \
    && useradd -u 1000 -p goober khandpv1 \
    && echo "------------------------------------------------------ Clean" \
    && apt-get -y autoremove \
    && apt-get -y clean \
    && apt-get -y autoclean \
    && :
    
# Home Directory
WORKDIR /home/khandpv1

# Clone Repo
RUN git clone https://github.com/khandgp1/mlops.git

# Entrypoint
ENTRYPOINT bash

# Docker Cheat Sheet
# docker build -t ubuntu_python --rm https://github.com/khandgp1/mlops.git
# docker run -ti --rm ubuntu_python

#   References:
# Secrets: https://medium.com/marionete/pass-secure-information-for-building-docker-images-8adeafe08355
