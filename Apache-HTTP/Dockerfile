FROM ubuntu:18.04
MAINTAINER nooen@gmail.com

RUN apt-get update
RUN apt-get install apt-utils apache2 apache2-utils -y
RUN apt-get clean

EXPOSE 80 
CMD ["apache2ctl","-D","FOREGROUND"]
