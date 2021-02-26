<?php

/**
 * This configuration file is only provided to document the different
 * configuration options and their usage.
 *
 * DO NOT COMPLETELY BASE YOUR CONFIGURATION FILE ON THIS SAMPLE. THIS MAY BREAK
 * YOUR INSTANCE. Instead, manually copy configuration switches that you
 * consider important for your instance to your working ``config.php``, and
 * apply configuration options that are pertinent for your instance.
 *
 * This file is used to generate the configuration documentation.
 * Please consider following requirements of the current parser:
 *  * all comments need to start with `/**` and end with ` *\/` - each on their
 *    own line
 *  * add a `@see CONFIG_INDEX` to copy a previously described config option
 *    also to this line
 *  * everything between the ` *\/` and the next `/**` will be treated as the
 *    config option
 *  * use RST syntax
 */

$CONFIG = [
/**
 * In rare setups (e.g. on Openshift or docker on windows) the permissions check
 * might block the installation while the underlying system offers no means to
 * "correct" the permissions. In this case, set the value to false.
 *
 * In regular cases, if issues with permissions are encountered they should be
 * adjusted accordingly. Changing the flag is discouraged.
 *
 * Defaults to ``true``
 */
'check_data_directory_permissions' => false,
];