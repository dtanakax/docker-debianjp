# Set the base image
FROM debian:wheezy

# File Author / Maintainer
MAINTAINER Daisuke Tanaka, tanaka@infocorpus.com

RUN apt-get update
RUN apt-get install -y --no-install-recommends vim

# Remove unnecessary language
COPY locale-archive /usr/lib/locale/locale-archive

ENV LANG ja_JP.utf8

RUN apt-get clean

# Set timezone
RUN rm -f /etc/localtime
RUN ln -fs /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
