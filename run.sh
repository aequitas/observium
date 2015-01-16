#!/bin/bash
sed -i 's/OBDB/'$DB_NAME'/g' /opt/observium/config.php
sed -i 's/admin/'$DB_USER'/g' /opt/observium/config.php
sed -i 's/obdbpassword/'$DB_PASS'/g' /opt/observium/config.php
sed -i 's/ob-db/'$DB_HOST'/g' /opt/observium/config.php
cd /opt/observium
php includes/update/update.php
php adduser.php $OB_ADMIN $OB_PASS 10
cd /
/sbin/my_init