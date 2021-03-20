<?php
return [
    'db' => [
        'username' => '%db.user%',
        'password' => '%db.password%',
        'dbname' => '%db.database%',
        'host' => '%db.host%',
        'port' => '%db.port%'
    ],
	 
  	'session' => array(
		'save_handler' => 'redis',
		'save_path' => "/var/run/redis/redis-server.sock",
	),
	'backendsession' => array(
	  'save_handler' => 'redis',
	  'save_path' => "/var/run/redis/redis-server.sock",
	),
	'cache' => [
	  'backend' => 'redis', // e.G auto, apcu, xcache
	  'backendOptions' => [
		'servers' => array(
		  array(
			'host' => '/var/run/redis/redis-server.sock',
			'port' => 0,
			'dbindex' => 1,
			'redisAuth' => ''
		  ),
		),
	  ],
	],
	'model' => [
	  'redisHost' => '/var/run/redis/redis-server.sock',
	  'redisPort' => 0,
	  'redisDbIndex' => 2,
	  'cacheProvider' => 'redis'
	],
];
