#!/bin/bash
/sbin/my_init
source /etc/apache2/envvars
exec apache2 -D FOREGROUND
php /opt/observium/includes/update/update.php
php /opt/observium/adduser.php $OB_ADMIN $OB_PASS 10