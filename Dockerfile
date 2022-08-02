FROM alpine:3.15

MAINTAINER 167167

ADD entrypoint.sh /opt/entrypoint.sh
ADD www /wwwroot/www
ADD conf/ /conf

RUN set -ex \
    apk add --no-cache wget unzip shadowsocks-libev nginx && chmod +x /opt/entrypoint.sh

ENTRYPOINT ["sh", "-c", "/opt/entrypoint.sh"]
