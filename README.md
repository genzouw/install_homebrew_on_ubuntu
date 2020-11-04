# Homebrew install script on Ubuntu

[![Docker Pulls](https://img.shields.io/docker/pulls/genzouw/install_homebrew_on_ubuntu.svg?style=for-the-badge)](https://hub.docker.com/r/genzouw/install_homebrew_on_ubuntu/)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/genzouw/install_homebrew_on_ubuntu.svg?style=for-the-badge)](https://hub.docker.com/r/genzouw/install_homebrew_on_ubuntu/)

[![dockeri.co](https://dockeri.co/image/genzouw/install_homebrew_on_ubuntu)](https://hub.docker.com/r/genzouw/install_homebrew_on_ubuntu)

## Description

This repository have Homebrew install script on Ubuntu ( `install_homebrew_on_ubuntu.sh` ) and test environment ( `Dockerfile` )

I hope that you can refer to it when setting up **Homerew** in Linux environment (Ubuntu).

## Requirements

* Docker

## Usage

**Launch**

```bash
# Build
$ docker build -t genzouw/install_homebrew_on_ubuntu .

# Run
$ docker run -it genzouw/install_homebrew_on_ubuntu
```

And you can use `brew`.

```bash
# Install sl command
$ brew install sl

# Execute sl command
$ sl
```

## License

This software is released under the MIT License, see LICENSE.

## Author Information

[genzouw](https://genzouw.com)

* Twitter   : @genzouw ( https://twitter.com/genzouw )
* Facebook  : genzouw ( https://www.facebook.com/genzouw )
* LinkedIn  : genzouw ( https://www.linkedin.com/in/genzouw/ )
* Gmail     : genzouw@gmail.com
