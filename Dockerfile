FROM ubuntu:20.04

# Install Boilerplate Workspace
RUN : \
    && echo "Install Boilerplate Workspace" \
    && DEBIAN_FRONTEND=noninteractive apt-get update -y \
    && echo "------------------------------------------------------ Install Python" \
    && apt-get install -y python3 python3-pip \
    && echo "------------------------------------------------------ Install Editor" \
    && apt-get install -y vim \
    && echo "------------------------------------------------------ Install Git" \
    && apt-get install -y git \
    && apt-get clean \
    && echo "------------------------------------------------------ User" \
    && useradd abc \
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
