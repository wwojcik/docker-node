FROM gliderlabs/alpine:latest

MAINTAINER Wojciech Wójcik <wojtaswojcik@gmail.com>

RUN apk --update add nodejs \
    && npm -g install gulp \
                      grunt \
                      bower
EXPOSE 3000
VOLUME ["/app"]
WORKDIR /app

CMD ["node"]