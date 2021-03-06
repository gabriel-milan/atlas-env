FROM ubuntu:bionic

LABEL MAINTAINER Gabriel Gazola Milan <gabriel.milan@lps.ufrj.br>

USER root
SHELL [ "/bin/bash", "-c" ]
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV TERM screen

# Preventing undesired input calls
ARG DEBIAN_FRONTEND=noninteractive

# Install requirements
RUN apt-get update && apt-get upgrade -y && apt-get install -y python3 python3-pip git

# ATLAS kernel
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -U virtualenv
RUN mkdir -p /usr/env/atlas-env
COPY . /usr/env/atlas-env
RUN cd /usr/env/atlas-env && ./generate_env.sh --pip --root --prometheus

