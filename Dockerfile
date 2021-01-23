FROM alpine:3.13.0
RUN apk upgrade --no-cache
RUN apk add boost1.75-chrono=1.75.0-r4 \
            boost1.75-regex=1.75.0-r4 \
            boost1.75-thread=1.75.0-r4 \
            boost1.75-filesystem=1.75.0-r4 \
            boost1.75-serialization=1.75.0-r4 \
            boost1.75-program_options=1.75.0-r4 \
    --repository https://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add monero=0.17.1.9-r1 \
    --repository https://nl.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
