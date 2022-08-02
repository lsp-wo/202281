FROM alpine:3.15

RUN apk add --update \
    && apk add wget unzip \
    && apk add shadowsocks-libev\
    && apk add nginx\

COPY www.tar /wwwroot/www.tar
COPY conf/ /conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
