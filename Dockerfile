# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/unrar:latest as unrar

FROM ghcr.io/linuxserver/baseimage-alpine:edge

ENV HOME="/config"

RUN \
  echo "**** install build packages ****" && \
  apk add --no-cache --virtual=build-dependencies \
    build-base \
    cargo \
    curl-dev \
    libffi-dev \
    libjpeg-turbo-dev \
    openssl-dev \
    python3-dev \
    zlib-dev && \
  echo "**** install packages ****" && \
  apk add --no-cache \
    ffmpeg \
    libjpeg-turbo \
    7zip \
    python3 \
    sqlite \
    tesseract-ocr && \