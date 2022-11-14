<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin
[END_COT_EXT]
==================== */

/**
 * Pages manager & Queue of pages
 *
 * @package Cotonti
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('page', 'any');
cot_block($usr['isadmin']);

if (!in_array($p, array('default', 'add', 'edit')))
{
    $p = 'default';
}

require_once cot_incfile('users', 'module', 'admin.'.$p);
