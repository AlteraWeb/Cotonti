<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=module
[END_COT_EXT]
==================== */

/**
 * Polls module main
 *
 * @package Polls
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

// Environment setup
define('COT_POLLS', true);
cot::$env['location'] = 'polls';

// Self requirements
require_once cot_incfile('polls', 'module');
require_once cot_incfile('polls', 'module', 'resources');

/* === Hook === */
foreach (cot_getextplugins('polls.first') as $pl) {
	include $pl;
}
/* ===== */

list(cot::$usr['auth_read'], cot::$usr['auth_write'], cot::$usr['isadmin']) = cot_auth('polls', 'a');
cot_block(cot::$usr['auth_read']);

$mode = cot_import('mode', 'G', 'ALP');

if ($mode == 'ajax' || COT_AJAX) {
	/* === Hook === */
	foreach (cot_getextplugins('polls.ajax') as $pl) {
		include $pl;
	}
	/* ===== */

	$theme = cot_import('poll_theme', 'G', 'TXT');
	$id = cot_import('poll_id', 'P', 'INT');

	cot_sendheaders();
	cot_poll_vote();
	$poll_form = cot_poll_form($id, '', $theme);
	echo $poll_form['poll_block'];
	exit;
}

$id = cot_import('id', 'G', 'INT');
$vote = cot_import('vote', 'G', 'TXT');
if (!empty($vote)) {
	$vote = explode(" ", $vote);
}
if (empty($vote)) {
	$vote = cot_import('vote', 'P', 'ARR');
}

$ratings = cot_import('ratings', 'G', 'BOL');

if ($id > 0) {
    $poll = cot::$db->query('SELECT poll_id, poll_text FROM ' . cot::$db->polls . ' WHERE poll_id=? ', $id)
         ->fetch();

    if (!$poll) {
        cot_die_message(404, TRUE);
    }

    $subtitle = htmlspecialchars($poll['poll_text']);
    cot::$out['subtitle'] = cot::$L['Poll'] . ': ' . $subtitle;
    cot::$out['desc'] = cot::$L['polls_id_stat_result'] . ' «' . $subtitle . '» ' . cot::$L['polls_id_stat_formed'];
    cot::$out['keywords'] = preg_replace("/[^\w\s]/ui","", mb_strtolower(cot::$out['subtitle']));

} else {
    cot:: $out['subtitle'] = cot::$L['Polls'];
    cot::$out['desc'] = cot::$L['polls_meta_desc'];
    cot::$out['keywords'] = mb_strtolower(cot::$L['polls_allpolls']) . ' ' . cot::$sys['domain'];
}

/* === Hook === */
foreach (cot_getextplugins('polls.main') as $pl) {
	include $pl;
}
/* ===== */

require_once cot::$cfg['system_dir'] . '/header.php';

$t = new XTemplate(cot_tplfile('polls'));

if (cot_check_messages()) {
	cot_display_messages($t);
}

if ($id > 0) {
	cot_poll_vote();
	$poll_form = cot_poll_form($id);

	$t->assign(array(
		'POLLS_TITLE' => cot_parse($poll_form['poll_text'], cot::$cfg['polls']['markup']),
		'POLLS_FORM' => $poll_form['poll_block'],
		'POLLS_VIEWALL' => cot_rc_link(cot_url('polls', 'id=viewall'), cot::$L['polls_viewarchives'])
	));

	/* === Hook === */
	foreach (cot_getextplugins('polls.view.tags') as $pl) {
		include $pl;
	}
	/* ===== */

	$t->parse('MAIN.POLLS_VIEW');

	$t->assign(array(
		'POLLS_EXTRATEXT' => !empty($extra) ? $extra : '',
	));

	$t->parse('MAIN.POLLS_EXTRA');

} else {
	$jj = 0;
	$sql = cot::$db->query('SELECT * FROM ' . cot::$db->polls .
        " WHERE poll_state = 0 AND poll_type = 'index' ORDER BY poll_id DESC");

	/* === Hook - Part1 === */
	$extp = cot_getextplugins('polls.viewall.tags');
	/* ===== */
	foreach ($sql->fetchAll() as $row) {
		$jj++;
		$t->assign(array(
			'POLL_DATE' => cot_date('date_full', $row['poll_creationdate']),
			'POLL_DATE_STAMP' => $row['poll_creationdate'],
			'POLL_HREF' => cot_url('polls', 'id=' . $row['poll_id']),
			'POLL_TEXT' => cot_parse($row['poll_text'], cot::$cfg['polls']['markup']),
			'POLL_NUM' => $jj,
			'POLL_ODDEVEN' => cot_build_oddeven($jj)
		));

		/* === Hook - Part2 === */
		foreach ($extp as $pl) {
			include $pl;
		}
		/* ===== */

		$t->parse('MAIN.POLLS_VIEWALL.POLL_ROW');
	}

	if ($jj == 0) {
		$t->parse('MAIN.POLLS_VIEWALL.POLL_NONE');
	}
	$t->parse('MAIN.POLLS_VIEWALL');
}

/* === Hook === */
foreach (cot_getextplugins('polls.tags') as $pl) {
	include $pl;
}
/* ===== */

$t->parse('MAIN');
$t->out('MAIN');
require_once cot::$cfg['system_dir'] . '/footer.php';
