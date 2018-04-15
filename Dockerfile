FROM alpine:3.7
RUN apk upgrade --no-cache
RUN apk add boost=1.66.0-r0 \
            boost-regex=1.66.0-r0 \
            boost-thread=1.66.0-r0 \
            boost-system=1.66.0-r0 \
            boost-filesystem=1.66.0-r0 \
            boost-serialization=1.66.0-r0 \
            boost-program_options=1.66.0-r0 \
            libressl2.7-libcrypto=2.7.2-r0 \
            libressl2.7-libssl=2.7.2-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add monero=0.12.0.0-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
