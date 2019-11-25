FROM ubuntu:latest
RUN apt-get upgrade
RUN apt-get update -y
RUN apt-get install -y apache2
VOLUME /var/www/html
COPY ./index.html /var/www/html
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"
