<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'daily');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '>RL%|{NU)AbLCFJHt l]fmGi_Gd7Vnt4Gpzx|lEIC<7~?G~:5-XYR:cJz-BEoIfV');
define('SECURE_AUTH_KEY',  'zS&.d3T>I^)c_GsS|bZ49N(V+c)|{X{;5Sr~O;NFLE0#9Wn+c0%fV*Ppr+~Ne?xp');
define('LOGGED_IN_KEY',    'oM|a-!*#K*2xmC=+p=}2~yQ}slzq# P/4e)dqz1y*qtDv]j(a4XMz!XK:}Z#6_x,');
define('NONCE_KEY',        'vgvg(n#uoEk$&wl:+TTTs~9gH+%x1.X{[u;TMTkC!gKYM|OB;Ly78{`sCmpvq-D8');
define('AUTH_SALT',        'do5GZ2.`HSv!ctx $yQdw%n`g[W]w..,JgfPt )TQ)XE;^1SBVtnMA4D>/~.*uxo');
define('SECURE_AUTH_SALT', 'I8$[%}-Y!9%ksJc6A%crs,k8+BBvQ.<|?UO*gfj(+zuqiP6v-xa48eeh+B8g/L&d');
define('LOGGED_IN_SALT',   'P~v|YoexaovN92PfC%L~3dplpjVYFf;<t4rb,`||8%%PtPFEA;MGzsK}8$$);=#|');
define('NONCE_SALT',       'aFJ2<^jk^n|$:ErgRlHam2B@B$>6fu@>khg/+i3w(.GZsmPzA@*tgnKeuSMmiDLG');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'jc_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
