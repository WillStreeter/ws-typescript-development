FROM willsonic/ws-node-alpine:v0.0.1

MAINTAINER Will Streeter <will.streeter@gmail.com>

#Install tools necessary for developing Angular 2 based apps

ENV PATH $PATH:/usr/lib/node_modules/bin

RUN npm install --prefix /usr/lib/node_modules/ --global typescript    && \
    npm isntall --prefix /usr/lib/node_modules/ --global tslint  && \
    npm isntall --prefix /usr/lib/node_modules/ --global typings  && \
    npm install --prefix /usr/lib/node_modules/ --global yarn    && \
    npm install --prefix /usr/lib/node_modules/ --global gulp    && \
    apk del curl tar && \
    mkdir -p /app

WORKDIR /app

