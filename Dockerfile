FROM alpine:3.15

RUN apk update && apk add --no-cache binutils cmake make libgcc musl-dev gcc g++ go rust cargo

