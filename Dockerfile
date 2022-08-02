FROM alpine:3.15

MAINTAINER 167167

RUN set -xe\
    && apk add upgrade -y \
    && apk add wget unzip \
    && apk add shadowsocks-libev \
    && apk add nginx \

COPY www.tar /wwwroot/www.tar
COPY conf/ /conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

CMD /entrypoint.sh
