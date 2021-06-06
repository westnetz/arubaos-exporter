FROM trafex/alpine-nginx-php7:2.0.2@sha256:6d97e3a4f2ff47e0ab50eab552557fc088eb12e17fab73df9b58f1389a9e5a77
USER root
RUN apk --no-cache add php7-snmp
USER nobody
COPY src/ /var/www/
