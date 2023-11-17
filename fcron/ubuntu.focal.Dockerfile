FROM ubuntu:20.04 AS builder

ARG DEBIAN_FRONTEND=noninteractive

COPY ./apt.conf /etc/apt/

RUN apt update
RUN apt install -y git build-essential autoconf ca-certificates

RUN apt install -y docbook docbook-xsl docbook-xml docbook-utils manpages-dev
RUN git clone https://github.com/yo8192/fcron.git
RUN cd fcron && git checkout ver3_3_1

#RUN apt install curl ca-certificates vim-tiny tzdata
