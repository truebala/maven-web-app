FROM ubuntu:latest
RUN apt update -y
RUN apt install -y apache2
EXPOSE 80
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
