FROM ubuntu
RUN apt-get update && apt-get install net-tools apache2 apache2-utils
RUN apt-get clean 
EXPOSE 80 
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
