#!/bin/bash
php /opt/observium/includes/update/update.php
php /opt/observium/adduser.php $OB_ADMIN $OB_PASS 10
/sbin/my_init