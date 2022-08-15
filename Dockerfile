FROM ubuntu
RUN apt update && apt install -y net-tools apache2 apache2-utils apache2-bin
RUN apt clean 
EXPOSE 80 
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
