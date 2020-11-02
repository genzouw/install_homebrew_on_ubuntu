#!/usr/bin/env bash
set -o errexit
set -o nounset

BREW_NAME=brew
BREW_PASSWORD=brew
BREW_UID=${1}

apt-get update \
  && apt-get upgrade -y \
  && apt-get -y install \
    --no-install-recommends \
    locales \
    sudo \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
  && useradd --uid $BREW_UID --shell /bin/bash --create-home $BREW_NAME \
  && groupadd admin \
  && gpasswd -a $BREW_NAME admin \
  && echo "$BREW_NAME:$BREW_PASSWORD" | chpasswd \ ;
