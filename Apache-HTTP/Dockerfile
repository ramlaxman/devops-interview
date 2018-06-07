FROM ubuntu:18.04@sha256:e7def0d56013d50204d73bb588d99e0baa7d69ea1bc1157549b898eb67287612
MAINTAINER nooen@gmail.com

RUN apt-get update
RUN apt-get install apt-utils apache2 apache2-utils -y
RUN apt-get clean

EXPOSE 80 
CMD ["apache2ctl","-D","FOREGROUND"]
