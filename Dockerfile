FROM node:8.17-jessie-slim

MAINTAINER "S M Y ALTAMASH" "smy.altamash@gmail.com"

WORKDIR /home/enc

COPY . /home/enc

RUN npm -v

RUN echo "deb http://archive.debian.org/debian stretch main" > /etc/apt/sources.list

 

RUN apt update

RUN apt install -y  python3 make g++

 

RUN apt install -y zip

# make g++

 

#RUN npm install -g node-gyp

 

RUN npm install

 

#    && apt remove --purge -y --force-yes python make g++ \

#    && apt-get autoremove -y  \

#    && rm -rf /var/lib/apt/lists/*

EXPOSE 8013

CMD sh entrypoint.sh