<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=admin.menu.before
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');
include_once cot_langfile('page', 'module', 'ru');

if (defined('COT_ADMIN')) {
    $isadmin = cot_auth('page', 'any', 'A');
    if ($isadmin) {
        $db_pages = cot::$db_x . 'pages';
        $current_state = cot_import("state", "G", "INT");
        $current_filter = cot_import("filter", "G", "TXT");
        $current_n = cot_import("n", "G", "TXT");

        $page_moderated = $db->query("SELECT COUNT(*) FROM {$db_pages} WHERE page_state=1")->fetchColumn();
        if ($page_moderated > 9) $page_moderated = "9+";
        $page_hidden = $db->query("SELECT COUNT(*) FROM {$db_pages} WHERE page_state=2")->fetchColumn();
        if ($page_hidden > 9) $page_hidden = "9+";


        $menu["page"] = [
            "title" => __('Pages'),
            "icon" => 'bi bi-file',
            "url" => "/admin.php?m=page",
            "active" => ($current_module == "page") ||
                ($current_module == "config" && $current_page == "page") ||
                ($current_module == "structure" && $current_n == "page") ||
                ($current_module == "extrafields" && $current_n == "{$db_x}pages"),
            "items" => [
                [
                    "title" => __('adm_showall'),
                    "url" => cot_url("admin", "m=page"),
                    "active" => $current_module == "page" && !$current_page && !$current_filter  && !$current_n || (isset($_GET["search"]) && $current_state != 2),
                ],
                [
                    "title" => __('Settings'),
                    "url" =>  cot_url("admin", "m=config&n=edit&o=module&p=page"),
                    "active" => $current_module == "config" && $current_page == "page",
                ],
                [
                    "title" => __('Structure'),
                    "url" => cot_url("admin", "m=structure&n=page"),
                    "active" => $current_module == "structure" && $current_n == "page",
                ],
                [
                    "title" => __('adm_extrafields'),
                    "url" => cot_url('admin',"m=extrafields&n={$db_x}pages"),
                    "active" => $current_module == "extrafields" && $current_n == "{$db_x}pages",
                ],
            ]
        ];
    }

}
