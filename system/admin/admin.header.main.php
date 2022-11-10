<?php
defined('COT_CODE') or die('Wrong URL.');
list($admin_read, $admin_write, $isadmin) = cot_auth('admin', 'a');

$current_module = cot_import("m", "G", "TXT");
$current_page = cot_import("p", "G", "TXT");
$current_subpage = cot_import("s", "G", "TXT");
$current_n = cot_import("n", "G", "TXT");
$current_o = cot_import("o", "G", "TXT");


$menu = [];


/* === Hook === */
foreach (cot_getextplugins('admin.menu.before') as $pl) {
    include $pl;
}
/* ===== */

asort($menu);
if ($admin_read) {
    if ($usr["admin_config"]) {
        $menu["extensions"] = [
            "title" => $L['Extensions'],
            "icon" => 'bi-cpu',
            "url" => "/admin.php?m=extensions",
            "active" => $current_module == "extensions",
        ];
    }
    if ($usr["admin_config"]) {
        $menu["settings_core"] = [
            "title" => $L['Configuration'],
            "icon" => 'bi-gear',
            "url" => cot_url("admin", "m=config"),
            "active" => $current_module == "config" && $current_o != 'module',
        ];
    }
    if (!defined("COT_CONFIG_TYPE_HIDDEN")) {
        define("COT_CONFIG_TYPE_HIDDEN", 5);
    }

    $menu["other"] = [
        "title" => $L['Other'],
        "icon" => 'bi-columns-gap',
        "url" => "/admin.php?m=other",
        "active" => ($current_module == "other" && !$current_page) || $current_module == "cache" || ($current_module == "extrafields" && !$current_n) || $current_module == "log" || $current_module == "infos",
        "items" => [
            [
                "title" => $L['adm_extrafields'],
                "url" => cot_url('admin', 'm=extrafields'),
                "active" => $current_module == "extrafields" && !$current_subpage,
            ],
            [
                "title" => $L['Structure'],
                "url" => cot_url('admin', 'm=structure'),
                "active" => $current_module == "structure" && !$current_subpage,
            ],
            [
                "title" => $L['adm_internalcache'],
                "url" =>  cot_url('admin', 'm=cache'),
                "active" => $current_module == "cache" && !$current_subpage,
            ],
            [
                "title" => $L['adm_diskcache'],
                "url" =>  cot_url('admin', 'm=cache&s=disk'),
                "active" => $current_module == "cache" && $current_subpage == "disk",
            ],
            [
                "title" => $L['adm_log'],
                "url" =>  cot_url('admin', 'm=log'),
                "active" => $current_module == "log",
            ],
            [
                "title" => $L['adm_infos'],
                "url" =>  cot_url('admin', 'm=infos'),
                "active" => $current_module == "infos"
            ],
        ]
    ];

}

/* === Hook === */
foreach (cot_getextplugins('admin.menu.after') as $pl) {
    include $pl;
}
/* ===== */

if ($menu) {
    foreach ($menu as $k => $v) {

        if (isset($v["items"]) && count($v["items"])) {
            foreach ($v["items"] as $item) {
                $t->assign([
                    "MENU_ITEM_TITLE" => @$item["title"],
                    "MENU_ITEM_COUNT" => @$item["count"],
                    "MENU_ITEM_URL" => @$item["url"],
                    "MENU_ITEM_ACTIVE" => @$item["active"],
                ]);

                $t->parse('HEADER.MENU.ITEMS');
                $t->parse('HEADER.MOBILE_MENU.ITEMS');
            }
            $t->assign("MENU_ITEMS", count(@$v["items"]));
        } else {
            $t->assign("MENU_ITEMS", 0);
        }
        $t->assign([
            "MENU_KEY" => $k,
            "MENU_TITLE" => @$v["title"],
            "MENU_URL" => @$v["url"],
            "MENU_ICON" => @$v["icon"],
            "MENU_COUNT" => @$v["count"],
            "MENU_ACTIVE" => @$v["active"],
        ]);
        $t->parse('HEADER.MENU');
    }
}

