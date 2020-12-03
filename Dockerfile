FROM alpine:edge

RUN apk add --no-cache inotify-tools aws-cli curl
