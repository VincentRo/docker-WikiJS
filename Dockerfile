#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

# Install prerequisites
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl build-essential libssl-dev

# Install Git
RUN apt-get install -y git

# Install Wiki.js
RUN mkdir -p /var/www/wiki
RUN cd /var/www/wiki
WORKDIR /var/www/wiki
RUN curl -sL https://deb.nodesource.com/setup_11.x | bash -
RUN apt-get install -y nodejs
RUN curl -sSo- https://wiki.js.org/install.sh | bash

ENTRYPOINT ["/bin/bash"]
EXPOSE 80 3000
