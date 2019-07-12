FROM alpine:3.9

RUN apk update \
    && apk upgrade \
    && apk --no-cache add ca-certificates

WORKDIR /usr/app

COPY shipping .

ENTRYPOINT [ "./shipping" ]