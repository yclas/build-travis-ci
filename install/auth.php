<?php defined('SYSPATH') or die('No direct access allowed.');

return array(

	'driver'       => 'oc',
	'hash_method'  => 'sha256',
	'hash_key'     => 'x5k2k2x7bpg27zqy',
	'lifetime'     => 90*24*60*60,
	'session_type' => Session::$default,
	'session_key'  => 'auth_user',
	'cookie_salt'  => 'cookie_x5k2k2x7bpg27zqy',
    'ql_lifetime'  => 7*24*60*60,
    'ql_separator' => '|',
);