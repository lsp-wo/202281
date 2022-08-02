FROM alpine:3.15

MAINTAINER 167167

ADD entrypoint.sh /opt/entrypoint.sh

RUN set -ex \
    apk add --no-cache wget unzip shadowsocks-libev nginx && chmod +x /opt/entrypoint.sh

COPY www /wwwroot/www
COPY conf/ /conf

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
