FROM tutum/apache-php:latest

WORKDIR /

ENV DB_NAME observium
ENV DB_USER admin
ENV DB_PASS password
ENV DB_HOST localhost

RUN apt-get update && apt-get -y install php5-cli php5-mysql php5-snmp snmp graphviz php5-mcrypt php5-json subversion mysql-client rrdtool fping imagemagick whois mtr-tiny nmap ipmitool python-mysqldb

RUN rm -rf /app

RUN mkdir -p /app

WORKDIR /app

RUN wget http://www.observium.org/observium-community-latest.tar.gz

RUN tar zxvf observium-community-latest.tar.gz

RUN rm -fr /var/www/html && ln -s /app/observium /var/www/html

RUN rm /app/observium-community-latest.tar.gz

WORKDIR /app/observium

ADD config.php .

RUN mkdir logs

RUN mkdir rrd

RUN chown www-data:www-data rrd

ADD observium /etc/cron.d/

ADD run.sh /
RUN chmod +x /run.sh

EXPOSE 80
CMD ["/run.sh"]

