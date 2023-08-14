FROM node:8.17-jessie-slim

 

MAINTAINER "S M Y ALTAMASH" "smy.altamash@gmail.com"

 

WORKDIR /home/enc

 

COPY . /home/enc

RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list

RUN apt update

 

RUN apt install -y zip python make g++

RUN npm install

RUN  apt remove --purge -y --force-yes python make g++ \
    && apt-get autoremove -y  \
    && rm -rf /var/lib/apt/lists/*

 

EXPOSE 8013

 

CMD sh entrypoint.sh