FROM phusion/baseimage

WORKDIR /

ENV DB_NAME observium
ENV DB_USER admin
ENV DB_PASS password
ENV DB_HOST localhost

ENV OB_ADMIN ob_admin
ENV OB_PASS ob_pass

RUN apt-get update && apt-get -y install wget libapache2-mod-php5 php5-cli php5-mysql php5-gd php5-snmp php-pear snmp graphviz php5-mcrypt php5-json subversion mysql-client rrdtool fping imagemagick whois mtr-tiny nmap ipmitool python-mysqldb

RUN mkdir -p /opt

WORKDIR /opt

RUN wget http://www.observium.org/observium-community-latest.tar.gz

RUN tar zxvf observium-community-latest.tar.gz

RUN rm -fr /var/www/html && ln -s /opt/observium/html /var/www/html

RUN rm /opt/observium-community-latest.tar.gz

WORKDIR /opt/observium

RUN mkdir logs

RUN mkdir rrd

RUN chown www-data:www-data rrd

ADD observium /etc/cron.d/

ADD config.php /opt/observium/

ADD apache.conf /etc/apache/sites-available/000-default.conf

RUN php5enmod mcrypt

RUN a2enmod rewrite

ADD run.sh /
RUN chmod +x /run.sh

EXPOSE 80
CMD ["/run.sh"]

