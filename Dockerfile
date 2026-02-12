FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive \
    texlive-base \
    texlive-latex-extra \
    texlive-fonts-extra

WORKDIR /data
VOLUME ["/data"]
