FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install python3 -y
COPY index.html /var/www/html/

CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]

EXPOSE 80
