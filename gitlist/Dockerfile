FROM debian
COPY apache.conf /tmp/
RUN \
	apt-get update && \
	apt-get install -y wget apache2 php5-common libapache2-mod-php5 php5-cli git && \
	useradd git && \
	usermod -a -G git www-data && \
	a2enmod rewrite && \
	cd tmp && \
	wget https://s3.amazonaws.com/gitlist/gitlist-0.5.0.tar.gz && \
	tar -xzf gitlist-0.5.0.tar.gz -C /var/www/ && \
	cd /var/www/gitlist && \
	cp config.ini-example config.ini && \
	mkdir cache && \
	chmod 777 cache && \
	rm -rf /var/www/html && \
	mv /var/www/gitlist /var/www/html && \
	chown -R www-data:www-data /var/www && \
	mv /tmp/apache.conf /etc/apache2/sites-available/000-default.conf && \
	service apache2 restart && \
	rm -rf /tmp/*

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
