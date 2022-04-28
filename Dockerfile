FROM ubuntu:21.10
LABEL maintainer="lucas"

RUN apt-get update && apt-get install -y apache2

COPY siteweb/* /var/www/html/

RUN echo "ServerName test" >> /etc/apache2/apache2.conf

WORKDIR /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"] 

EXPOSE 80
