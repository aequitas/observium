#!/bin/bash
apacha2ctl start
sleep 1
php /opt/observium/includes/update/update.php
php /opt/observium/adduser.php $OB_ADMIN $OB_PASS 10
apacha2ctl stop
sleep 1
/sbin/my_init