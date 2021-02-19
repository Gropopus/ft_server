FROM debian:buster
ENV INDEX on

RUN apt-get -y update && apt-get -y upgrade
RUN apt-get -y install nginx
RUN apt-get -y install openssl
RUN apt-get -y install mariadb-server
RUN apt-get -y install wget
RUN apt-get -y install php7.3 php-mysql php-fpm php-cli php-mbstring

COPY ./srcs/index_off.conf /var/
COPY ./srcs/launch.sh /var/
COPY ./srcs/config_mysql.sql /var/
COPY ./srcs/nginx-host-config /etc/nginx/sites-available/localhost
RUN ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost
RUN mkdir /etc/nginx/certif-ssl

WORKDIR /var/www/html/
RUN wget https://wordpress.org/latest.tar.gz
RUN mv latest.tar.gz wordpress.tar.gz
RUN tar xf ./wordpress.tar.gz && rm -rf wordpress.tar.gz
RUN chmod 755 -R wordpress
RUN mkdir /var/www/html/wordpress/wp-content/uploads
COPY ./srcs/wordpress.sql /var/
COPY srcs/wp-config.php /var/
COPY ./srcs/photo /var/www/html/wordpress/wp-content/uploads/2021/02

WORKDIR /var/www/html/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/4.9.1/phpMyAdmin-4.9.1-english.tar.gz
RUN tar xf phpMyAdmin-4.9.1-english.tar.gz && rm -rf phpMyAdmin-4.9.1-english.tar.gz
RUN mv phpMyAdmin-4.9.1-english phpmyadmin
COPY ./srcs/config.inc.php phpmyadmin


RUN service mysql start && mysql -u root mysql < /var/config_mysql.sql && mysql wordpress -u root --password=thsembel < /var/wordpress.sql
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=FR/ST=75017/L=Paris/O=42/CN=thsembel' -keyout /etc/nginx/certif-ssl/localhost.key -out /etc/nginx/certif-ssl/localhost.pem
RUN chown -R www-data:www-data *
RUN chmod 755 -R *

CMD bash /var/launch.sh
EXPOSE 80 443
