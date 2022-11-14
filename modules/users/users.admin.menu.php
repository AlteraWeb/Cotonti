<?php

/**
 * [BEGIN_COT_EXT]
 * Hooks=admin.menu.before
 * [END_COT_EXT]
 */

defined('COT_CODE') or die('Wrong URL.');
include_once cot_langfile('users', 'module', 'ru');

if (defined('COT_ADMIN')) {
    $isadmin = cot_auth('users ', 'any', 'A');
    if ($isadmin) {

        $menu["users"] = [
            "title" => __('Users'),
            "icon" => 'bi bi-people',
            "url" => "/admin.php?m=users",
            "active" => ($current_module == "users") ||
                ($current_module == "config" && $current_page == "users") ||
                ($current_module == "structure" && $current_n == "users") ||
                ($current_module == "extrafields" && $current_n == "{$db_x}users") ||
                ($current_module == "usergroups"),
            "items" => [
                [
                    "title" => __('user_list'),
                    "url" => cot_url("admin", "m=users"),
                    "active" => $current_module == "users",
                ],
                [
                    "title" => __('user_group'),
                    "url" => cot_url("admin", "m=usergroups"),
                    "active" => $current_module == "usergroups",
                ],
                [
                    "title" => __('Settings'),
                    "url" =>  cot_url("admin", "m=config&n=edit&o=module&p=users"),
                    "active" => $current_module == "config" && $current_page == "users",
                ],
                [
                    "title" => __('adm_extrafields'),
                    "url" => cot_url('admin',"m=extrafields&n={$db_x}users"),
                    "active" => $current_module == "extrafields" && $current_n == "{$db_x}users",
                ],
            ]
        ];
    }

}
