<?php

## Have a look in includes/defaults.inc.php for examples of settings you can set here. DO NOT EDIT defaults.inc.php!

// Database config
<<<<<<< .merge_file_q3H9wz
$config['db_host'] = '$DB_HOST';
$config['db_user'] = '$DB_USER';
$config['db_pass'] = '$DB_PASS';
$config['db_name'] = '$DB_NAME';
=======
$config['db_host'] = 'localhost';
$config['db_user'] = 'USERNAME';
$config['db_pass'] = 'PASSWORD';
$config['db_name'] = 'observium';
>>>>>>> .merge_file_1boURD

// Location
$config['install_dir']  = "/app/observium";

// Thie should *only* be set if you want to *force* a particular hostname/port
// It will prevent the web interface being usable form any other hostname
#$config['base_url']        = "http://observium.company.com";

// Default community list to use when adding/discovering
$config['snmp']['community'] = array("public");

// Authentication Model
$config['auth_mechanism'] = "mysql";    // default, other options: ldap, http-auth, please see documentation for config help

// Enable alerter
// $config['poller-wrapper']['alerter']       = TRUE;

// Set up a default alerter (email to a single address)
$config['alerts']['alerter']['default']['descr']   = "Default Email Alert";
$config['alerts']['alerter']['default']['type']    = "email";
$config['alerts']['alerter']['default']['contact'] = "you@yourdomain.org";
$config['alerts']['alerter']['default']['enable']  = TRUE;


// End config.php