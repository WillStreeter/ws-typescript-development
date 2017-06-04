FROM willsonic/ws-node-alpine:v1.0.0

MAINTAINER Will Streeter <will.streeter@gmail.com>

#Install tools necessary for developing modern Angular X  based apps with TypeScript

ENV PATH $PATH:/usr/lib/node_modules/bin

RUN npm install --prefix /usr/lib/node_modules/ --global typescript    && \
    npm isntall --prefix /usr/lib/node_modules/ --global tslint  && \
    npm isntall --prefix /usr/lib/node_modules/ --global typings  && \
    npm install --prefix /usr/lib/node_modules/ --global yarn    && \
    npm install --prefix /usr/lib/node_modules/ --global gulp    && \
    apk del curl tar && \
    mkdir -p /app

WORKDIR /app

