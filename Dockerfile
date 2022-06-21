FROM node:16

RUN apt-get update && \
  dpkg --add-architecture i386 && \
  apt-get update && \
  apt-get install -y --no-install-recommends wine wine32 && \
  rm -rf /var/lib/apt/lists/*
