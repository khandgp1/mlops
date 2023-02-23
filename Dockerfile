FROM ubuntu:20.04

# Install Boilerplate Workspace
RUN DEBIAN_FRONTEND=noninteractive apt-get update -y \
    && echo "------------------------------------------------------ Install Python" \
    && apt-get install python3 -y \
    && apt-get install python3-pip -y \
    && apt-get install vim -y \
    && echo "------------------------------------------------------ Install Git" \
    && apt-get install git -y

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
