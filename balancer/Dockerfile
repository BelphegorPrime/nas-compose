FROM node:lts AS builder

WORKDIR /app

RUN npm init -y
RUN npm i dotenv

COPY ./balancer.json .
COPY ./balancer.js .
COPY ./.env .

RUN node balancer.js

FROM haproxy:2.3
COPY --from=builder /app/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg