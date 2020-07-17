FROM debian:testing
MAINTAINER Simon Schiele <simon.codingmonkey@gmail.com>

ENV DEBIAN_FRONTEND noninteractive
RUN echo "dash dash/sh boolean false" | debconf-set-selections && \
    dpkg-reconfigure -p critical dash
RUN apt-get update && \
        apt-get install -y make texlive-full

WORKDIR /CV
CMD make build
