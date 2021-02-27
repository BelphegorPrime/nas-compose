FROM node:lts as builder

WORKDIR /app

COPY ./balancer.json .
COPY ./balancer.js .

RUN node balancer.js

FROM haproxy:2.3
COPY --from=builder /app/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg