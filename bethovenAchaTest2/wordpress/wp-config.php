<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, and ABSPATH. You can find more information by visiting
 * {@link https://codex.wordpress.org/Editing_wp-config.php Editing wp-config.php}
 * Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'quantum_db');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'RbyjET*Cn]}PrrL+G0Ans&?K[)UilR0z0 gr FxrT2O ,s2 FYAA}04v}##XdAIv');
define('SECURE_AUTH_KEY',  '9(+[Q9{|Km2%&qQ!M&=hpe`:az<=)Yv$oPo$E&X=1Bi9GR)SL_7%hmycli5:PY,Q');
define('LOGGED_IN_KEY',    'rZds/UJ=6gQ9N.-yF1[ra;~CJ<Oc=UYU+y<DN5WZ|Pgt#P9qk|!`mW#}sc/8se7g');
define('NONCE_KEY',        'CSgCM=4$!Wgya6@[Kgw/f-D,[d1~9T>B.hm0l}WSdsWx$!cR]o{8*a^c.syLEja_');
define('AUTH_SALT',        'Yyo]gUrP*LK1D^8[$dY(I_qwsl,&8 o>TTDO!,@V-d>JboTT{e6FOd&_Dfx^RYy(');
define('SECURE_AUTH_SALT', '=57^c?TTJ_^G7q}U+Em`Id:!3^QR&/A@a>Ll;Q<B@7<![evO}`q{bfDQNoEUM3*w');
define('LOGGED_IN_SALT',   'KV~,;kt)qq_=^x*U(nHie.7p/c^P)5hXZ^@HitZtS:ap0IiqeOJ4i4nnv#.^b,FT');
define('NONCE_SALT',       'iR&<er=BZ[Z,v],fo6i}m6`{I}!o4E,dWxF%S(Xo?dY9kQP6F_YJ,{2WxYA)}/tE');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
