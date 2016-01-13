# Centos with Nginx
FROM docker.io/centos
MAINTAINER Rick Martins <nixrepublic@gmail.com>
RUN yum install -y epel-release 2>/dev/null
RUN yum install -y nginx 2>/dev/null
RUN rm -f /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx"]
