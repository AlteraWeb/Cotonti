<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=admin.home.mainpanel
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

$tt = new XTemplate(cot_tplfile('hits.admin.home.stats', 'plug', true));
//Show hit stats
// INFO: `disablehitstats` var not actually defined in setup file now, but may be used (had been set) by another extension
if (!isset(cot::$cfg['plugin']['hits']['disablehitstats']) || !cot::$cfg['plugin']['hits']['disablehitstats']) {
	$sql = cot::$db->query("SELECT * FROM $db_stats WHERE stat_name LIKE '20%' ORDER BY stat_name DESC LIMIT ".$timeback_interval);
	while ($row = $sql->fetch()) {
		$year = mb_substr($row['stat_name'], 0, 4);
		$mons = mb_substr($row['stat_name'], 5, 2);
		$day = mb_substr($row['stat_name'], 8, 2);
		$dat = @date('d M', mktime(0, 0, 0, $mons, $day, $year));
		$hits_d[$dat] = $row['stat_value'];
	}
	$sql->closeCursor();

	if (is_array($hits_d)) {
		$hits_d_max = max($hits_d);

        $tt->assign([
            "ADMIN_HOME_DATES" => json_encode(array_keys($hits_d)),
            "ADMIN_HOME_VIEWS" => json_encode(array_values($hits_d)),
        ]);

		foreach ($hits_d as $day => $hits) {
			$percentbar = floor(($hits / $hits_d_max) * 100);
			$tt->assign(array(
				'ADMIN_HOME_DAY' => $day,
				'ADMIN_HOME_HITS' => $hits,
				'ADMIN_HOME_PERCENTBAR' => $percentbar
			));
			$tt->parse('MAIN.STAT.ADMIN_HOME_ROW');
		}
	}
	$tt->assign('ADMIN_HOME_MORE_HITS_URL', cot_url('admin', 'm=other&p=hits'));
	$tt->assign('ADMIN_HOME_CONFIG_URL', cot_url('admin', 'm=config&n=edit&o=plug&p=hits'));
	$tt->assign('HITS_STAT_HEADER', cot_rc(cot::$L['hits_hits'], "days=$timeback_interval_str") );
}

$tt->parse('MAIN');

$line = $tt->text('MAIN');
