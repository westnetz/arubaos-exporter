FROM trafex/alpine-nginx-php7:1.8.0
USER root
RUN apk --no-cache add php7-snmp
USER nobody
COPY src/ /var/www/
