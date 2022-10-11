FROM alpine

RUN \
    apk update && \
    apk upgrade && \
    apk add bash jq openssl util-linux

COPY dumpcerts.sh /usr/local/bin/dumpcerts
RUN chmod +x /usr/local/bin/dumpcerts \
 && /usr/bin/ln -s /usr/local/bin/dumpcerts /dumpcerts
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
