<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=header.user.tags
[END_COT_EXT]
==================== */

/**
 * Avatar and photo for users
 *
 * @package UserImages
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL');

// we need globals as it's a cot_generate_usertags() scope
global $R;

require_once cot_incfile('userimages', 'plug');
require_once cot_incfile('userimages', 'plug', 'resources');


if (is_array(cot::$usr["profile"])) {
    $userimages = cot_userimages_config_get();

    foreach ($userimages as $code => $settings) {
        $uimage = cot::$usr["profile"]['user_' . $code];
        if ($code === 'avatar' && empty($uimage)) {
            $gender = strtolower(cot::$usr["profile"]['user_gender']);
            $uimage = "datas/defaultav/{$gender}.png";
        }
        $t->assign([
            "USER_{$code}_SRC" => $uimage,
            "USER_{$code}" => cot_userimages_build(is_file($uimage) ? $uimage : '', $code)
        ]);
    }
}
