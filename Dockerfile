FROM debian:jessie
MAINTAINER vvakame

# setup
RUN apt-get update && \
    apt-get install -y cmake gcc-avr avr-libc dfu-programmer && \
    apt-get autoclean && apt-get --purge -y autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
