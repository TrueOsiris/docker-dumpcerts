FROM alpine

RUN \
    apk update && \
    apk upgrade && \
    apk add bash jq openssl util-linux && \
    apk add --no-cache tzdata

ENV TZ=Europe/Brussels
ENV CRONSCHEDULE="15 7 * * *"
ENV PROVIDER=your_traefik_certificatesresolver

VOLUME ["/acme"]

COPY dumpcerts.sh /usr/local/bin/dumpcerts
RUN chmod +x /usr/local/bin/dumpcerts \
 && ln -s /usr/local/bin/dumpcerts /dumpcerts
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
