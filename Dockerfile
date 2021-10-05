FROM ubuntu
ENV DEBIAN_FRONTEND=nonintercative
RUN apt-get  update
RUN apt-get -y install apache2
ADD index.html /var/www/html/index.html
ENTRYPOINT apachectl -D FOREGROUND
