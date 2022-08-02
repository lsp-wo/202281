FROM alpine:3.15

MAINTAINER 167167

ADD entrypoint.sh /opt/entrypoint.sh

RUN set -ex \
    && apk add wget unzip \
    && apk add shadowsocks-libev \
    && apk add nginx \

COPY www /wwwroot/www
COPY conf/ /conf

RUN chmod +x /opt/entrypoint.sh

CMD /entrypoint.sh
