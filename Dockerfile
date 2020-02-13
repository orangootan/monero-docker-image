FROM alpine:3.11.3
RUN apk upgrade --no-cache
RUN apk add boost-chrono=1.72.0-r3 \
            boost-regex=1.72.0-r3 \
            boost-thread=1.72.0-r3 \
            boost-filesystem=1.72.0-r3 \
            boost-serialization=1.72.0-r3 \
            boost-program_options=1.72.0-r3 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add monero=0.14.1.2-r2 \
    --repository https://nl.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
