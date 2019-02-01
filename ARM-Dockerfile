#Download base image ubuntu 16.04
FROM ubuntu:16.04

# Replace shell with bash so we can source files
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
 
# Install prerequisites
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y curl build-essential libssl-dev

# Install Git
RUN apt-get install -y git

# Install Node.js (Check the last version)
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
RUN source ~/.nvm/nvm.sh; \
    nvm install node && \
    nvm use node && \
    npm install -g node-gyp

# Install Wiki.js
RUN mkdir -p /var/www/wiki
RUN cd /var/www/wiki
WORKDIR /var/www/wiki
RUN npm install wiki.js@latest

ENTRYPOINT ["/bin/bash"]
EXPOSE 80 3000