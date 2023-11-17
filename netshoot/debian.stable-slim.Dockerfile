FROM debian:stable-slim

RUN apt update
RUN apt install \
        dnsutils iputils-ping iproute2 telnet \
        mtr traceroute nmap \
        socat curl openssl jq vim-nox \
        redis-tools postgresql-client openssh-client \
        --no-install-recommends -y

RUN useradd -ms /bin/bash netshoot
USER netshoot
WORKDIR /home/netshoot
