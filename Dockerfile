FROM ubuntu:20.04

RUN apt-get update
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN apt-get install vim -y

WORKDIR /home/khandpv1

ENTRYPOINT bash