FROM ubuntu:latest

LABEL maintainer "genzouw <genzouw@gmail.com>"

COPY install_homebrew_on_ubuntu.sh /tmp/

RUN /tmp/install_homebrew_on_ubuntu.sh && rm /tmp/install_homebrew_on_ubuntu.sh

ENTRYPOINT ["bash"]
