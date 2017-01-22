FROM node:7.4.0-alpine

RUN npm -g install bower gulp gulp-cli \
  && apk add --no-cache \
    git \
    python \
  && rm -rf /var/cache/apk/* \
  && echo '{ "allow_root": true }' > /root/.bowerrc
