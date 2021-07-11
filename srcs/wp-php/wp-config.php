<?php
define( 'DB_NAME',     'wordpress' );
define( 'DB_USER',     'wordpress' );
define( 'DB_HOST',     'mariadb' );
define( 'DB_CHARSET',  'utf8mb4' );
$table_prefix = 'wp_';
define('AUTH_KEY',         'AVvi19X~m:;4KE+1W &#hiKM`tBA|I47Bf*C;=rrMWv6-^3QcM+AEI`oQ?Tq!nM?');
define('SECURE_AUTH_KEY',  '{3dpB:! !|#iU=;.=v.Qjipu94df$*7=;x<a`N(n*zJFkM-v;giq)&8dU1](n[9T');
define('LOGGED_IN_KEY',    '<LjzL$$nNsIQn%r-Px.5|Ca_[[3s-;S6hv<bfd;]+j<q8Hr{@},N0.5a)n&@upvl');
define('NONCE_KEY',        '8-aS?I[mga^:qk%wR]D^RKE1isjjt[A|F+F}V!CMWL-TKBjIQKbkNq*}NVdmG|=}');
define('AUTH_SALT',        '4W;xqi;^zv}Mg[X!(+j;6.D~sk*/O:n&Y+9I$ O ]J9qo/csMn9~HTM78PDr&QWe');
define('SECURE_AUTH_SALT', '$2v;:l.2Zf6J71~.l]u_p0t**ZGfV>KVNED.lS6IZ0UF9;I{Mhve5 !xzPg?e+(v');
define('LOGGED_IN_SALT',   'NEk[UVzvujO$LyqW<|+ITbgiGYT*o)H+(f@3{;LEN0SkKN0Q{U2:uE6<E>rroT1;');
define('NONCE_SALT',       'V>F[m`Z70<2CzNAdlvdQXRul~vE#2H3>8IupH#AD]ovY55x7|yrTF/,Sv2j;f4 &');
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');
define( 'DB_PASSWORD', 'wordopresso' );