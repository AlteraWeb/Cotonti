<?php
/**
 * Administration panel - Other Admin parts listing
 *
 * @package Cotonti
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

(defined('COT_CODE') && defined('COT_ADMIN')) or die('Wrong URL.');

$t = new XTemplate(cot_tplfile('admin.other', 'core'));

$p = cot_import('p', 'G', 'ALP');

/* === Hook === */
foreach (cot_getextplugins('admin.other.first') as $pl) {
	include $pl;
}
/* ===== */

if (!empty($p)) {
	list(cot::$usr['auth_read'], cot::$usr['auth_write'], cot::$usr['isadmin']) = cot_auth('plug', $p);
	cot_block(cot::$usr['isadmin']);

    cot::$env['ext'] = $p;
    $adminsubtitle = '';
    if (isset($cot_plugins_enabled[$p])) {
        $adminsubtitle = $cot_plugins_enabled[$p]['title'];
    }

	if (file_exists(cot_langfile($p, 'plug'))) {
		require_once cot_langfile($p, 'plug');
	}

	$extp = array();

	if (is_array($cot_plugins['tools'])) {
		foreach ($cot_plugins['tools'] as $k) {
			if ($k['pl_code'] == $p) {
				$extp[] = $k;
			}
		}
	}

	if (count($extp) == 0) {
		cot_die_message(907, TRUE);
	}

	$adminpath[] = array(cot_url('admin', 'm=extensions'), cot::$L['Extensions']);
	$adminpath[] = array(cot_url('admin', 'm=extensions&a=details&pl='.$p), $cot_plugins_enabled[$p]['title']);
	$adminpath[] = array(cot_url('admin', 'm=other&p='.$p), cot::$L['Administration']);

	// $adminhelp = cot::$L['Description'].' : '.$info['Description'].'<br />'.cot::$L['Version'].' : '.$info['Version'].'<br />'.cot::$L['Date'].' : '.$info['Date'].'<br />'.cot::$L['Author'].' : '.$info['Author'].'<br />'.cot::$L['Copyright'].' : '.$info['Copyright'].'<br />'.cot::$L['Notes'].' : '.$info['Notes'];
    $adminmain = '';

	if (is_array($extp)) {
		foreach($extp as $k => $pl) {
            $plugin_body = '';
			include_once cot::$cfg['plugins_dir'] . '/' . $pl['pl_file'];
			$adminmain .= $plugin_body;
		}
	}

} else {
	$adminpath[] = array(cot_url('admin', 'm=other'), cot::$L['Other']);
	$adminsubtitle = cot::$L['Other'];
	list(cot::$usr['auth_read'], cot::$usr['auth_write'], cot::$usr['isadmin']) = cot_auth('admin', 'a');
	cot_block(cot::$usr['auth_read']);

	$target = array();

	function cot_admin_other_cmp($pl_a, $pl_b) {
		if($pl_a['pl_code'] == $pl_b['pl_code']) {
			return 0;
		}
		return ($pl_a['pl_code'] < $pl_b['pl_code']) ? -1 : 1;
	}

	foreach (array('module', 'plug') as $type) {
		if ($type == 'module') {
			$target = $cot_plugins['admin'];
			$title = cot::$L['Modules'];
		} else {
			$target = $cot_plugins['tools'];
			$title = cot::$L['Plugins'];
		}

		if (is_array($target)) {
			usort($target, 'cot_admin_other_cmp');
			foreach ($target as $pl) {
				$ext_info = cot_get_extensionparams($pl['pl_code'], $type == 'module');
				$t->assign(array(
					'ADMIN_OTHER_EXT_URL' => $type == 'plug' ? cot_url('admin', 'm=other&p=' . $pl['pl_code']) :
						cot_url('admin', 'm=' . $pl['pl_code']),
					'ADMIN_OTHER_EXT_ICO' => $ext_info['icon'],
					'ADMIN_OTHER_EXT_NAME' => $ext_info['name'],
					'ADMIN_OTHER_EXT_DESC' => $ext_info['desc']
				));
				$t->parse('MAIN.SECTION.ROW');
			}
		} else {
			$t->parse('MAIN.SECTION.EMPTY');
		}
		$t->assign('ADMIN_OTHER_SECTION', $title);
		$t->parse('MAIN.SECTION');
	}

	$t->assign(array(
		'ADMIN_OTHER_URL_CACHE' => cot_url('admin', 'm=cache'),
		'ADMIN_OTHER_URL_DISKCACHE' => cot_url('admin', 'm=cache&s=disk'),
		'ADMIN_OTHER_URL_EXFLDS' => cot_url('admin', 'm=extrafields'),
		'ADMIN_OTHER_URL_STRUCTURE' => cot_url('admin', 'm=structure'),
		'ADMIN_OTHER_URL_BBCODE' => cot_url('admin', 'm=bbcode'),
		'ADMIN_OTHER_URL_LOG' => cot_url('admin', 'm=log'),
		'ADMIN_OTHER_URL_INFOS' => cot_url('admin', 'm=infos')
	));

	/* === Hook === */
	foreach (cot_getextplugins('admin.other.tags') as $pl) {
		include $pl;
	}
	/* ===== */
	$t->parse('MAIN');
	$adminmain = $t->text('MAIN');
}
