FROM alpine:3.15

MAINTAINER 167167

RUN set -ex \
    && apk add upgrade -y \
    && apk add wget unzip \
    && apk add shadowsocks-libev \
    && apk add nginx \

COPY www /wwwroot/www
COPY conf/ /conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
