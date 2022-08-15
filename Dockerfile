FROM ubuntu
RUN apt-get update && apt-get install -y net-tools apache2 apache2-utils apache2-bin
RUN apt-get clean 
EXPOSE 80 
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
