FROM ubuntu:latest
MAINTAINER ME

RUN mkdir apache_folder
RUN apt-get update && apt-get install -y \
net-tools inetutils-traceroute \
iputils-ping xinetd telnetd
RUN apt-get update 
RUN apt-get install –y apache2 
RUN apt-get install –y apache2-utils 
RUN apt-get clean 
EXPOSE 82 CMD [“apache2ctl”, “-D”, “FOREGROUND”]
COPY . /var/www/html/
