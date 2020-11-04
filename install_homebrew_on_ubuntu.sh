#!/usr/bin/env bash
set -o errexit
set -o nounset

HOME="${HOME:-/root}"
BREW_HOME="${HOME}/.homebrew"

# Ready to install
apt-get update \
  && apt-get -y install \
    --no-install-recommends \
    bash \
    build-essential \
    ca-certificates \
    curl \
    git \
    locales \
  && apt-get clean \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/* \
  ;

# Install
mkdir -p "${BREW_HOME}"
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz --strip 1 -C "${BREW_HOME}"

# Ready to use
eval $("${BREW_HOME}/bin/brew" shellenv)

echo "eval \$($(brew --prefix)/bin/brew shellenv)" >>~/.bashrc
