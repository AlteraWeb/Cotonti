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

if ($n == "extrafields") {

    $adminpath[] = array(cot_url('admin', 'm=page'), $L['Pages'] ?: 'Pages');
    $adminpath[] = array(cot_url('admin', 'm=page&n=extrafields'), $L['adm_extrafields']);

    $adminsubtitle = $L['adm_extrafields'];

    $target = 'pages';
    /* === Hook === */
    foreach (cot_getextplugins('admin.extrafields') as $pl) {
        include $pl;
    }
    /* ===== */
    return;
}


$adminpath[] = array(cot_url('admin', 'm=extensions'), $L['Extensions']);
$adminpath[] = array(cot_url('admin', 'm=extensions&a=details&mod=' . $m), $cot_modules[$m]['title']);
$adminpath[] = array(cot_url('admin', 'm=' . $m), $L['Administration']);

if (!in_array($p, array('default', 'add', 'edit'))) {
    $p = 'default';
}

require_once cot_incfile('page', 'module', 'admin.' . $p);
