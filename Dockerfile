FROM alpine:3.8
RUN apk upgrade \
    --repository http://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add boost-chrono=1.67.0-r2 \
            boost-regex=1.67.0-r2 \
            boost-thread=1.67.0-r2 \
            boost-system=1.67.0-r2 \
            boost-filesystem=1.67.0-r2 \
            boost-serialization=1.67.0-r2 \
            boost-program_options=1.67.0-r2 \
            unbound-libs=1.8.1-r1 \
    --repository http://nl.alpinelinux.org/alpine/edge/main \
    --no-cache
RUN apk add miniupnpc=2.1-r0 \
    --repository http://nl.alpinelinux.org/alpine/edge/community \
    --no-cache
RUN apk add monero=0.13.0.4-r1 \
    --repository http://nl.alpinelinux.org/alpine/edge/testing \
    --no-cache && \
    mkdir /var/lib/monero
ENTRYPOINT ["monerod"]
CMD ["--data-dir=/var/lib/monero"]
