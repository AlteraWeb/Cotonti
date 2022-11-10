<?php

defined('COT_CODE') or die('Wrong URL');

require_once cot_incfile('userimages', 'plug');

cot_userimages_config_add('avatar', 160, 160, 'fit', true);
