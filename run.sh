#!/bin/bash
cd /opt/observium
php includes/update/update.php
php adduser.php $OB_ADMIN $OB_PASS 10
cd /
/sbin/my_init