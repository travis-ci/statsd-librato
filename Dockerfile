FROM node:6

ENV TINI_VERSION v0.18.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

RUN npm install -g statsd statsd-librato-backend@0.1.8
COPY ./config.js ./config.js

CMD ["statsd", "./config.js"]
