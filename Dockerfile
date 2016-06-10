FROM alpine:3.4

RUN apk update && apk add --no-cache binutils cmake make libgcc musl-dev gcc g++

