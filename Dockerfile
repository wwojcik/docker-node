FROM gliderlabs/alpine:latest

MAINTAINER Wojciech Wójcik <wojtaswojcik@gmail.com>

ENV TIMEZONE=Europe/Warsaw

RUN apk --update add nodejs \
    && npm -g install gulp \
                      grunt \
                      bower \
                      tzdata \
    && rm -rf /var/cache/apk/* && \
    cp /usr/share/zoneinfo/$TIMEZONE /etc/localtime && \
    echo "$TIMEZONE" >  /etc/timezone

EXPOSE 3000
VOLUME ["/app"]
WORKDIR /app

CMD ["node"]