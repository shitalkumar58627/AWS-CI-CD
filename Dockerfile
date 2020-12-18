FROM ubuntu:16.04
MAINTAINER SHITALKUMAR DHAWALE
############### INSTALLING UPDATES AND APACHE SERVER ############
RUN apt-get update
RUN apt-get install -y apache2
############## PREPARING ENVIRNMENT #############################
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

COPY js /var/www/html/
COPY source-for-web-designers /var/www/html/
COPY upload /var/www/html/

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]

EXPOSE 80

################### Congratulations Contianer has been launched successfully #######################


