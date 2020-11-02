FROM ubuntu:latest

LABEL maintainer "genzouw <genzouw@gmail.com>"

COPY dockerfile-init.sh /tmp/

ENV USER=brew
ENV UID=1000

RUN /tmp/dockerfile-init.sh "${UID}" && rm /tmp/dockerfile-init.sh

USER ${UID}

ENTRYPOINT ["bash"]
