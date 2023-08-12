FROM ubuntu:latest
RUN apt update -y
RUN apt install -y apache2
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
