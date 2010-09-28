<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.extrafields.first
[END_COT_EXT]
==================== */

/**
 * Page module
 *
 * @package page
 * @version 0.7.0
 * @author esclkm, Cotonti Team
 * @copyright Copyright (c) Cotonti Team 2008-2010
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

if ($n == 'page')
{
	cot_require('page');
	$adminpath[] = array(cot_url('admin', 'm=page'), $L['Page']);
	$adminpath[] = array(cot_url('admin', 'm=extrafields&n=page'), $L['adm_extrafields']);
	$adminhelp = $L['adm_help_pages_extrafield'];
	$extra_path = 'm=extrafields&n=page';
	$location = $db_pages;
}

?>