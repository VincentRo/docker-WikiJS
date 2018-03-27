# docker-WikiJS
A Dockerfile to build a container for the nice WikiJS application https://wiki.js.org/

A link with another container for MongoDB need to be use

## Build
 docker build -t wikijs .

## Run
 docker run --name wikijs1 -p 3080:80 -p 3000:3000 --link mongodb:mongodb -v /home/docker/wikijs/data/:/data/ -ti -d wikijs
 
When the container is started :
 sudo docker exec -ti wikijs1 bash
 
Start the configuration :
 node wiki configure
 
Configure the new WikiJS with a browser.