FROM centos:latest
MAINTAINER irfanansari
RUN yum install httpd -y \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page256/rapid.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rapid.zip
RUN cp -rvf Rapid/* .
RUN rm -rf Rapid rapid.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
