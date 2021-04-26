FROM trafex/alpine-nginx-php7:2.0.1@sha256:a06fe9857a4c8f46c0516f28a3e914f7a86aa900610f6b13392e4a97a9b34054
USER root
RUN apk --no-cache add php7-snmp
USER nobody
COPY src/ /var/www/
