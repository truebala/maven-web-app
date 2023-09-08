FROM ubuntu:latest
RUN apt update -y
RUN apt install -y apache2
COPY index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
