<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=admin.menu.before
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');
include_once cot_langfile('forums', 'module', 'ru');

if (defined('COT_ADMIN')) {
    $isadmin = cot_auth('forums', 'any', 'A');
    if ($isadmin) {
        $current_state = cot_import("state", "G", "INT");
        $current_filter = cot_import("filter", "G", "TXT");
        $current_n = cot_import("n", "G", "TXT");


        $menu["forums"] = [
            "title" => __('Forums'),
            "icon" => 'bx bx-conversation',
            "url" => "/admin.php?m=page",
            "active" => ($current_module == "forums") ||
                ($current_module == "config" && $current_page == "forums") ||
                ($current_module == "structure" && $current_n == "forums") ||
                ($current_module == "extrafields" && $current_n == "{$db_x}forum_posts") ||
                ($current_module == "extrafields" && $current_n == "{$db_x}forum_topics"),
            "items" => [
                [
                    "title" => __('forums_topics'),
                    "url" => cot_url("admin", "m=forums"),
                    "active" => $current_module == "forums" && !$current_page && !$current_filter  && !$current_n || (isset($_GET["search"]) && $current_state != 2),
                ],
                [
                    "title" => __('Settings'),
                    "url" =>  cot_url("admin", "m=config&n=edit&o=module&p=forums"),
                    "active" => $current_module == "config" && $current_page == "forums",
                ],
                [
                    "title" => __('Structure'),
                    "url" => cot_url("admin", "m=structure&n=forums"),
                    "active" => $current_module == "structure" && $current_n == "forums",
                ],
                [
                    "title" => __('adm_extrafields') . ' (posts)',
                    "url" => cot_url('admin',"m=extrafields&n={$db_x}forum_posts"),
                    "active" => $current_module == "extrafields" && $current_n == "{$db_x}forum_posts",
                ],
                [
                    "title" => __('adm_extrafields') . ' (topics)',
                    "url" => cot_url('admin',"m=extrafields&n={$db_x}forum_topics"),
                    "active" => $current_module == "extrafields" && $current_n == "{$db_x}forum_topics",
                ],
            ]
        ];
    }

}
