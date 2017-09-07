<?php defined('SYSPATH') or die('No direct access allowed.');

return array(

	'driver'       => 'oc',
	'hash_method'  => 'sha256',
	'hash_key'     => 'mb2c2za@escscbf*',
	'lifetime'     => 90*24*60*60,
	'session_type' => Session::$default,
	'session_key'  => 'auth_user',
	'cookie_salt'  => 'cookie_mb2c2za@escscbf*',
    'ql_lifetime'  => 7*24*60*60,
    'ql_separator' => '|',
);