FROM trafex/alpine-nginx-php7:1.10.0@sha256:161c70f6aa41dab1c56b829af0ba08ac1dec7e75600a71077477bc95fef044cf
USER root
RUN apk --no-cache add php7-snmp
USER nobody
COPY src/ /var/www/
