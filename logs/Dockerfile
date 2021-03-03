FROM logstash:7.6.1

EXPOSE 5000/tcp 5000/udp

ENV DROP_NON_JSON false
ENV STDOUT true
ENV LOGSPOUT ignore

ADD logstash.conf /logstash.conf

ENTRYPOINT logstash -f /logstash.conf