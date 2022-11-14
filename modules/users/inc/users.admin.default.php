<?php

list($usr['auth_read'], $usr['auth_write'], $usr['isadmin']) = cot_auth('users', 'a');
cot_block($usr['isadmin']);

$id = cot_import('id', 'G', 'INT');
$s = cot_import('s', 'G', 'ALP', 16);
$w = cot_import('w', 'G', 'ALP', 4);
$n = cot_import('n', 'G', 'TXT');
$d = cot_import('d', 'G', 'INT');

$f = cot_import('f', 'G', 'ALP', 16);
$g = cot_import('g', 'G', 'INT');
$y = cot_import('y', 'G', 'TXT');
$sq = cot_import('sq', 'G', 'TXT', 16);
$country = cot_import('country', 'G', 'TXT');

include_once cot_incfile("users", "module", "model");
require_once cot_langfile('countries', 'core');
require_once cot_incfile('forms');

$title[] = array(cot_url('users'), __('Users'));
$myskin = cot_tplfile(['users', 'admin'], 'module', true);
$t = new XTemplate($myskin);



$countryfilters = cot_selectbox($country, 'country', array_keys($cot_countries), array_values($cot_countries), true, '', '', true);
$maingrpfilters = cot_selectbox($g, 'g', array_map(function ($item) {
    return $item["id"];
}, $cot_groups), array_map(function ($item) {
    return $item["name"];
}, $cot_groups), true, '', '', true);


/* === Hook === */
foreach (cot_getextplugins('users.first') as $pl) {
    include $pl;
}
/* ===== */


/* === Hook === */
foreach (cot_getextplugins('users.query') as $pl) {
    include $pl;
}
/* ===== */
$model = new User();
$where = [];
$join_condition = '';

if ($y) {
    $sq = $y;
    $title[] = __('Search') . " '" . htmlspecialchars($y) . "'";
    $where['namelike'] = "user_name LIKE '%" . $db->prep($y) . "%'";
}
if ($g > 1) {
    $title[] = __('Maingroup') . " = " . cot_build_group($g);
    $where['maingrp'] = "user_maingrp=$g";
}
if ($country) {
    $cn = $country;
    $title[] = __('Country') . " '" . (($cn == '00') ? __('None') . "'" : $cot_countries[$cn] . "'");
    $where['country'] = "user_country='$cn'";
}
if(empty($where)) {
    $where['1'] = "1";
}

$offset = 0;
if ($d > 1) {
    $offset = ($d - 1) * $cfg['users']['maxusersperpage'];
}

list($users, $totalusers) = $model->findAndCount($join_condition . " WHERE " . implode(" AND ", $where), $offset, $cfg['users']['maxusersperpage']);

$users_url_path = array('m' => 'users', 'g' => $g, 's' => $s, 'w' => $w, 'sq' => $sq, 'country' => $country);
$totalpage = ceil($totalusers / $cfg['users']['maxusersperpage']);
$currentpage = ceil($d / $cfg['users']['maxusersperpage']) + 1;
$pagenav = cot_pagenav('admin', $users_url_path, $d, $totalusers, $cfg['users']['maxusersperpage']);

if ($d > $totalpage) {
    cot_die_message(404);
}

$adminpath[] = cot_breadcrumbs($title, $cfg['homebreadcrumb']);

$t->assign([
    "USERS" => array_map(function ($item) {
       $item['user_hideemail'] = 0;
        return cot_generate_usertags($item, "", __('Deleted'), false, true, true);
    }, $users),
    'breadcrumbs' => cot_breadcrumbs($title, $cfg['homebreadcrumb']),
    'SUBTITLE' => __('use_subtitle'),
    'CURRENT_FILTER' => $f,
    'CURRENT_PAGE' => $currentpage,
    'TOTAL_PAGE' => $totalpage,
    'MAX_PER_PAGE' => $cfg['users']['maxusersperpage'],
    'TOTAL_USERS' => $totalusers,
    'USERS_ON_PAGE' => count($users),
    'PAGE_NAV' => @$pagenav['main'],
    'PAGE_PREV' => @$pagenav['prev'],
    'PAGE_FIRST' => @$pagenav['first'],
    'PAGE_NEXT' => @$pagenav['next'],
    'PAGE_LAST' => @$pagenav['last'],
    'FILTER_ACTION' => cot_url('admin', 'm=users&f=search'),
    'FILTERS_COUNTRY' => $countryfilters,
    'FILTERS_GROUP' => $maingrpfilters,
    'FILTERS_SEARCH' => cot_inputbox('search', 'y', $y, array('size' => 16, 'maxlength' => 16)),
    'FILTERS_SUBMIT' => cot_inputbox('submit', 'submit', __('Search')),
    'USERS_PM' => 'PM',
]);

$t->parse('MAIN');
$adminmain = $t->text('MAIN');
