FROM alpine:3.12.0
RUN apk upgrade --no-cache
RUN apk add boost-chrono=1.72.0-r6 \
            boost-regex=1.72.0-r6 \
            boost-thread=1.72.0-r6 \
            boost-filesystem=1.72.0-r6 \
            boost-serialization=1.72.0-r6 \
            boost-program_options=1.72.0-r6 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add monero=0.17.0.1-r0 \
    --repository https://nl.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
