FROM node:10.16.0

USER root

RUN mkdir -p /current
WORKDIR /current

RUN npm install cwebp-bin@5.1.0 iltorb@2.4.5 cypress@4.4.1
