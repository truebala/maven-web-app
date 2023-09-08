FROM amazonlinux
RUN yum update -y && yum install -y httpd && yum clean all
WORKDIR /tmp
COPY index.html /var/www/html
EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
