#!/bin/bash
sed -i 's/DB_NAME/'$DB_NAME'/g' /opt/observium/config.php
sed -i 's/DB_USER/'$DB_USER'/g' /opt/observium/config.php 
sed -i 's/DB_PASS/'$DB_PASS'/g' /opt/observium/config.php
sed -i 's/DB_HOST/'$DB_HOST'/g' /opt/observium/config.php
cd /opt/observium
php includes/update/update.php
php adduser.php $OB_ADMIN $OB_PASS 10
cd /
/sbin/my_init