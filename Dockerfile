FROM ubuntu:20.04

# Install Python
RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install vim -y

# Install Git
RUN apt-get install git -y

# Home Directory
WORKDIR /home/khandpv1

# Entrypoint
ENTRYPOINT bash

# Docker Cheat Sheet
# docker build -t ubuntu_python --rm https://raw.githubusercontent.com/khandgp1/mlops/main/Dockerfile
# docker run -ti --rm ubuntu_python
