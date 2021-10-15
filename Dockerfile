FROM alpine:3.14.2
RUN apk upgrade --no-cache
RUN apk add monero=0.17.2.3-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
