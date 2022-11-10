<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.home.toppanel
[END_COT_EXT]
==================== */

/**
 * Users module
 *
 * @package Users
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */
defined('COT_CODE') or die('Wrong URL');

$tt = new XTemplate(cot_tplfile('users.admin.home', 'module', true));

require_once cot_incfile('users', 'module');

$tt->assign([
    "ADMIN_HOME_TOTAL_USERS" => cot_count_users(),
    "ADMIN_HOME_INACTIVE_USERS" => cot_count_inactive_users()
]);

$tt->parse('MAIN');

$line = $tt->text('MAIN');
