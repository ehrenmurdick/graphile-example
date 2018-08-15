FROM node:alpine

WORKDIR /root

RUN yarn add postgraphile

COPY server.js .

CMD node server.js
