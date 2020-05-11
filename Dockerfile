FROM node:10.16.0

USER root

RUN mkdir -p /current
WORKDIR /current

RUN apt-get update && apt-get install -y \
  libgtk2.0-0 \
  libgtk-3-0 \
  libnotify-dev \
  libgconf-2-4 \
  libnss3 \
  libxss1 \
  libasound2 \
  libxtst6 \
  xauth \
  xvfb

RUN npm install cwebp-bin@5.1.0 iltorb@2.4.5 cypress@4.4.1
