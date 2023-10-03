# Use a base image with a web server (e.g., nginx)
FROM ubuntu:latest
RUN sudo apt update -y
RUN sudo apt install httpd -y && sudo systemctl start httpd

# Copy the index.html file into the default web server directory
COPY index.html /var/www/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the web server when the container runs
CMD ["httpd", "-D", "FOREGROUND"]
