#!/bin/bash
apachectl start
sleep 1
cd /opt/observium
php includes/update/update.php
php adduser.php $OB_ADMIN $OB_PASS 10
cd /
apachectl stop
sleep 1
/sbin/my_init