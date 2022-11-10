<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.home.sidepanel
[END_COT_EXT]
==================== */

/**
 * Hits
 *
 * @package Hits
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL');

global $Ls;

require_once cot_langfile('hits', 'plug');
require_once cot_incfile('hits', 'plug');

$timeback_interval = cot::$cfg['plugin']['hits']['timeback'] ? cot::$cfg['plugin']['hits']['timeback'] : 7;
$timeback_interval_str = cot_declension($timeback_interval, $Ls['Days']);

$tt = new XTemplate(cot_tplfile('hits.admin.home.activity', 'plug', true));

//Show activity stats
if (!cot::$cfg['plugin']['hits']['disableactivitystats']) {
	$timeback = cot::$sys['now'] - ($timeback_interval * 86400);

    $newpages = 0;
	if (cot_module_active('page')) {
        require_once cot_incfile('page', 'module');
        $sql = cot::$db->query("SELECT COUNT(*) FROM $db_users WHERE user_regdate > $timeback");
        $newusers = $sql->fetchColumn();

        $sql = cot::$db->query("SELECT COUNT(*) FROM $db_pages WHERE page_date > $timeback");
        $newpages = $sql->fetchColumn();
    }

    $newtopics = 0;
    $newposts = 0;
	if (cot_module_active('forums')) {
		require_once cot_incfile('forums', 'module');

		$sql = cot::$db->query("SELECT COUNT(*) FROM $db_forum_topics WHERE ft_creationdate > $timeback");
		$newtopics = $sql->fetchColumn();

		$sql = cot::$db->query("SELECT COUNT(*) FROM $db_forum_posts WHERE fp_updated > $timeback");
		$newposts = $sql->fetchColumn();
	}

    $newcomments = 0;
	if (function_exists('cot_get_newcomments')) {
		$newcomments = cot_get_newcomments($timeback);
	}

    $newpms = 0;
	if (cot_module_active('pm')) {
	 require_once cot_incfile('pm', 'module');
		$sql = cot::$db->query("SELECT COUNT(*) FROM $db_pm WHERE pm_date > $timeback");
		$newpms = $sql->fetchColumn();
	}

	$tt->assign(array(
		'ADMIN_HOME_NEWUSERS_URL' => cot_url('users', 'f=all&s=regdate&w=desc'),
		'ADMIN_HOME_NEWUSERS' => $newusers,
		'ADMIN_HOME_NEWPAGES_URL' => cot_url('admin', 'm=page'),
		'ADMIN_HOME_NEWPAGES' => $newpages,
		'ADMIN_HOME_NEWTOPICS_URL' => cot_url('forums'),
		'ADMIN_HOME_NEWTOPICS' => $newtopics,
		'ADMIN_HOME_NEWPOSTS_URL' => cot_url('forums'),
		'ADMIN_HOME_NEWPOSTS' => $newposts,
		'ADMIN_HOME_NEWCOMMENTS_URL' => cot_url('admin', 'm=comments'),
		'ADMIN_HOME_NEWCOMMENTS' => $newcomments,
		'ADMIN_HOME_NEWPMS' => $newpms
	));
	$tt->assign('ACTIVITY_STAT_HEADER', cot_rc(cot::$L['hits_activity'], "days=$timeback_interval_str") );
}


$tt->parse('MAIN');

$line = $tt->text('MAIN');
