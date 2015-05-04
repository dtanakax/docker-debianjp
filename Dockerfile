# Set the base image
FROM debian:wheezy

# File Author / Maintainer
MAINTAINER Daisuke Tanaka, dtanakax@gmail.com

RUN apt-get update && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get clean all

# Remove unnecessary language
COPY locale-archive /usr/lib/locale/locale-archive

ENV LANG ja_JP.UTF-8

# Set timezone
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
