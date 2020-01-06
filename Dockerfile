FROM ubuntu:latest

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install \
    --no-install-recommends \
    locales \
    sudo \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

ENV NAME=brew
ENV PASSWORD=brew
ENV UID=1000

RUN useradd --uid $UID --shell /bin/bash --create-home $NAME
RUN groupadd admin
RUN gpasswd -a $NAME admin
RUN echo "$NAME:$PASSWORD" | chpasswd

CMD [ "su", "-", "brew" ]
