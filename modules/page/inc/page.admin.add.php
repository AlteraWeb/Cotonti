<?php
/**
 * Add page.
 *
 * @package Page
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('forms');
require_once cot_incfile('page', 'module');

$id = cot_import('id', 'G', 'INT');
$c = cot_import('c', 'G', 'TXT');

if (!empty($c) && !isset($structure['page'][$c]))
{
	$c = '';
}

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('page', 'any');

/* === Hook === */
foreach (cot_getextplugins('page.add.first') as $pl)
{
	include $pl;
}
/* ===== */
cot_block($usr['auth_write']);

if (@$structure['page'][$c]['locked'])
{
	cot_die_message(602, TRUE);
}

$sys['parser'] = $cfg['page']['parser'];
$parser_list = cot_get_parsers();

if ($a == 'add')
{
	cot_shield_protect();

	/* === Hook === */
	foreach (cot_getextplugins('page.add.add.first') as $pl)
	{
		include $pl;
	}
	/* ===== */

	$rpage = cot_page_import('POST', array(), $usr);

	list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('page', $rpage['page_cat']);
	cot_block($usr['auth_write']);

	/* === Hook === */
	foreach (cot_getextplugins('page.add.add.import') as $pl)
	{
		include $pl;
	}
	/* ===== */

	cot_page_validate($rpage);

	/* === Hook === */
	foreach (cot_getextplugins('page.add.add.error') as $pl)
	{
		include $pl;
	}
	/* ===== */

	if (!cot_error_found())
	{
		$id = cot_page_add($rpage, $usr);

		switch ($rpage['page_state'])
		{
			case 0:
                $r_url = cot_url('admin', 'm=page&p=edit&id='.$id, '', true);
				break;
			case 1:
				$r_url = cot_url('message', 'msg=300', '', true);
				break;
			case 2:
				cot_message('page_savedasdraft');
				$r_url = cot_url('admin', 'm=page&p=edit&id='.$id, '', true);
				break;
		}
		cot_redirect($r_url);
	}
	else
	{
		cot_redirect(cot_url('admin', 'm=page&p=add&c='.$c, '', true));
	}
}

// Page cloning support
$clone = cot_import('clone', 'G', 'INT');
if ($clone > 0)
{
	$rpage = $db->query("SELECT * FROM $db_pages WHERE page_id = ?", $clone)->fetch();
}

if (empty($rpage['page_cat']) && !empty($c))
{
	$rpage['page_cat'] = $c;
	$usr['isadmin'] = cot_auth('page', $rpage['page_cat'], 'A');
}

$out['subtitle'] = __('page_addsubtitle');
$out['head'] .= @$R['code_noindex'];
$sys['sublocation'] = @$structure['page'][$c]['title'];

$mskin = cot_tplfile(array('page', 'admin', 'edit', @$structure['page'][$rpage['page_cat']]['tpl']));

/* === Hook === */
foreach (cot_getextplugins('page.add.main') as $pl)
{
	include $pl;
}
/* ===== */

$t = new XTemplate($mskin);

$pageadd_array = array(
	'PAGEEDIT_PAGETITLE' => $L['page_addtitle'],
	'PAGEEDIT_SUBTITLE' => $L['page_addsubtitle'],
	'PAGEEDIT_ADMINEMAIL' => "mailto:".$cfg['adminemail'],
	'PAGEEDIT_FORM_SEND' => cot_url('admin', 'm=page&p=add&a=add&c='.$c),
	'PAGEEDIT_FORM_CAT' => cot_selectbox_structure('page', @$rpage['page_cat'], 'rpagecat'),
	'PAGEEDIT_FORM_CAT_SHORT' => cot_selectbox_structure('page', @$rpage['page_cat'], 'rpagecat', $c),
	'PAGEEDIT_FORM_KEYWORDS' => cot_inputbox('text', 'rpagekeywords', @$rpage['page_keywords'], array('size' => '32', 'maxlength' => '255')),
	'PAGEEDIT_FORM_METATITLE' => cot_inputbox('text', 'rpagemetatitle', @$rpage['page_metatitle'], array('size' => '64', 'maxlength' => '255')),
	'PAGEEDIT_FORM_METADESC' => cot_textarea('rpagemetadesc', @$rpage['page_metadesc'], 2, 64, array('maxlength' => '255')),
	'PAGEEDIT_FORM_ALIAS' => cot_inputbox('text', 'rpagealias', @$rpage['page_alias'], array('size' => '32', 'maxlength' => '255')),
	'PAGEEDIT_FORM_TITLE' => cot_inputbox('text', 'rpagetitle', @$rpage['page_title'], array('size' => '64', 'maxlength' => '255')),
	'PAGEEDIT_FORM_DESC' => cot_textarea('rpagedesc', @$rpage['page_desc'], 2, 64, array('maxlength' => '255')),
	'PAGEEDIT_FORM_AUTHOR' => cot_inputbox('text', 'rpageauthor', @$rpage['page_author'], array('size' => '24', 'maxlength' => '100')),
	'PAGEEDIT_FORM_OWNER' => cot_build_user(@$usr['id'], htmlspecialchars(@$usr['name'])),
	'PAGEEDIT_FORM_OWNERID' => @$usr['id'],
	'PAGEEDIT_FORM_DATE' => cot_selectbox_date(@$sys['now'], 'long', 'rpagedate'),
	'PAGEEDIT_FORM_BEGIN' => cot_selectbox_date(@$sys['now'], 'long', 'rpagebegin'),
	'PAGEEDIT_FORM_EXPIRE' => cot_selectbox_date(0, 'long', 'rpageexpire'),
	'PAGEEDIT_FORM_FILE' => cot_selectbox(@$rpage['page_file'], 'rpagefile', range(0, 2), array($L['No'], $L['Yes'], $L['Members_only']), false),
	'PAGEEDIT_FORM_URL' => cot_inputbox('text', 'rpageurl', @$rpage['page_url'], array('size' => '56', 'maxlength' => '255')),
	'PAGEEDIT_FORM_SIZE' => cot_inputbox('text', 'rpagesize', @$rpage['page_size'], array('size' => '56', 'maxlength' => '255')),
	'PAGEEDIT_FORM_TEXT' => cot_textarea('rpagetext', @$rpage['page_text'], 24, 120, '', 'input_textarea_editor'),
	'PAGEEDIT_FORM_PARSER' => cot_selectbox(@$cfg['page']['parser'], 'rpageparser', $parser_list, $parser_list, false)
);

$t->assign($pageadd_array);

// Extra fields
if(!empty(cot::$extrafields[cot::$db->pages])) {
    foreach (cot::$extrafields[cot::$db->pages] as $exfld) {
        $uname = strtoupper(@$exfld['field_name']);
        $exfld_val = cot_build_extrafields('rpage' . @$exfld['field_name'], $exfld, @$rpage['page_' . $exfld['field_name']]);
        $exfld_title = cot_extrafield_title($exfld, 'page_');

        $t->assign(array(
            'PAGEEDIT_FORM_' . $uname => $exfld_val,
            'PAGEEDIT_FORM_' . $uname . '_TITLE' => $exfld_title,
            'PAGEEDIT_FORM_EXTRAFLD' => $exfld_val,
            'PAGEEDIT_FORM_EXTRAFLD_TITLE' => $exfld_title
        ));
        $t->parse('MAIN.EXTRAFLD');
    }
}

// Error and message handling
cot_display_messages($t);

/* === Hook === */
foreach (cot_getextplugins('page.add.tags') as $pl)
{
	include $pl;
}
/* ===== */

if (cot::$usr['isadmin'])
{
	if (cot::$cfg['page']['autovalidate']) $usr_can_publish = TRUE;
	$t->parse('MAIN.ADMIN');
}

$t->parse('MAIN');
$adminmain = $t->text('MAIN');


