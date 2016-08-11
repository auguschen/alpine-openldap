FROM alpine

MAINTAINER chen augus <tianhao.chen@gmail.com>

RUN apk update && apk add openldap openldap-back-bdb openldap-clients

EXPOSE 389 636

CMD ulimit -n 8192 && /usr/sbin/slapd -d 256 -u ldap -g ldap
