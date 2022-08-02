FROM alpine:3.15

RUN set -ex\
    && apk add upgrade -y \
    && apk add -y wget unzip qrencode\
    && apk add -y shadowsocks-libev\
    && apk add -y nginx\

COPY www.tar /wwwroot/www.tar
COPY conf/ /conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
