FROM trafex/alpine-nginx-php7:2.1.0@sha256:1bb3e7546c07f4c88240741da18c4e010ed2fe827b385ece1507b08150515a99
USER root
RUN apk --no-cache add php7-snmp
USER nobody
COPY src/ /var/www/
