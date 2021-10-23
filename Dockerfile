FROM ubuntu
ENV DEBIAN_FRONTEND=nonintercative
RUN apt-get  update
RUN apt-get -y install apache2
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND 
