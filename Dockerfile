# Use an Ubuntu-based image as the base image
FROM ubuntu:latest

# Set environment variables to avoid interactive prompts during installation
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC

# Update the package list and install httpd
RUN apt-get update && apt-get install -y apache2

COPY index.html /var/www/html
# Expose port 80 for HTTP traffic
EXPOSE 80

# Start httpd when the container runs
CMD ["apachectl", "-D", "FOREGROUND"]
