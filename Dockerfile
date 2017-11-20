FROM alpine:3.6
RUN apk add libressl2.6-libcrypto=2.6.3-r0 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add monero=0.11.1.0-r1 \
    --repository https://dl-cdn.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
