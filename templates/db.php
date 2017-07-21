<?php
/**
 * Database Configuration
 *
 * All of your system's database connection settings go in here. You can see a
 * list of the available settings in vendor/craftcms/cms/src/config/DbConfig.php.
 */

return [
    'driver'      => 'pgsql',
    'server'      => $_ENV['DATA_DB_HOST'],
    'user'        => $_ENV['DATA_DB_USER'],
    'password'    => $_ENV['DATA_DB_PASS'],
    'database'    => 'gonano',
    'schema'      => 'public',
    'tablePrefix' => '',
    'port'        => 5432
];
