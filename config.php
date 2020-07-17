<?php
// HTTP
define('HTTP_SERVER', 'http://reco.fun:8080/sharlar-shop/');

// HTTPS
define('HTTPS_SERVER', 'http://reco.fun:8080/sharlar-shop/');

// DIR
define('DIR_APPLICATION', '/var/www/html/sharlar-shop/catalog/');
define('DIR_SYSTEM', '/var/www/html/sharlar-shop/system/');
define('DIR_IMAGE', '/var/www/html/sharlar-shop/image/');
define('DIR_STORAGE',  '/var/www/sharlarstorage/');
define('DIR_LANGUAGE', DIR_APPLICATION . 'language/');
define('DIR_TEMPLATE', DIR_APPLICATION . 'view/theme/');
define('DIR_CONFIG', DIR_SYSTEM . 'config/');
define('DIR_CACHE', DIR_STORAGE . 'cache/');
define('DIR_DOWNLOAD', DIR_STORAGE . 'download/');
define('DIR_LOGS', DIR_STORAGE . 'logs/');
define('DIR_MODIFICATION', DIR_STORAGE . 'modification/');
define('DIR_SESSION', DIR_STORAGE . 'session/');
define('DIR_UPLOAD', DIR_STORAGE . 'upload/');

// DB
define('DB_DRIVER', 'mpdo');
define('DB_HOSTNAME', 'localhost');
define('DB_USERNAME', 'sharlar');
define('DB_PASSWORD', '6X4zK4TcNh');
define('DB_DATABASE', 'merryparty');
define('DB_PORT', '3306');
define('DB_PREFIX', 'oc_');