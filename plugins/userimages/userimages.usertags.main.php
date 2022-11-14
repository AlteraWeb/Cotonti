<?php
/* ====================
[BEGIN_COT_EXT]
Hooks=usertags.main
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

if (is_array($user_data)) {
    $userimages = cot_userimages_config_get();

    foreach ($userimages as $code => $settings) {
        $uimage = $user_data['user_' . $code];
        if ($code === 'avatar' && empty($uimage)) {
            $gender = strtolower($user_data['user_gender']);
            $uimage = "datas/defaultav/{$gender}.png";
        }
        $temp_array[mb_strtoupper($code, "UTF-8") . '_SRC'] = $uimage;
        $temp_array[mb_strtoupper($code, "UTF-8")] = cot_userimages_build(is_file($uimage) ? $uimage : '', $code);
    }
}
