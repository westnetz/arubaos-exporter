FROM trafex/alpine-nginx-php7:1.8.0@sha256:6e4a7576c836283a9a0b06368cc33c53663008b5868a316008fd4fb71715e034
USER root
RUN apk --no-cache add php7-snmp
USER nobody
COPY src/ /var/www/
