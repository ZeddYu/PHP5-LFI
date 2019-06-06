FROM nimmis/apache-php5
MAINTAINER Zedd <zeddyu.lu@gmail.com>


RUN apt-get update && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/www/html/*

RUN mkdir -p /etc/service/apache2/ && \
    printf "#!/bin/sh\n\nexec /usr/sbin/apachectl -D FOREGROUND\n" > /etc/service/apache2/run

COPY ./php.ini /etc/php5/apache2/

ADD ./html /var/www/html

EXPOSE 80