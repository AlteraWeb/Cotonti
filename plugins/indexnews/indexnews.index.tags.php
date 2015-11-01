<?php

/** 
 * [BEGIN_COT_EXT]
 * Hooks=index.tags
 * [END_COT_EXT]
 */
 
/**
 * plugin Index News for Cotonti Siena
 * 
 * @package indexnews
 * @version 1.0.0
 * @author esclkm
 * @copyright 
 * @license BSD
 *  */
// Generated by Cotonti developer tool (littledev.ru)
defined('COT_CODE') or die('Wrong URL.');

require_once cot_incfile('page', 'module');
require_once cot_incfile('indexnews', 'plug');

$indexnews_cache_id = "$theme.$lang." . cot_import('d', 'G', 'INT'); // Includes theme, lang, category and current page
// Cache for guests
if ($usr['id'] == 0 && $cache && (int) $cfg['plugin']['indexnews']['cache_ttl'] > 0)
{
	$indexnews_html = $cache->disk->get($indexnews_cache_id, 'indexnews', (int) $cfg['plugin']['indexnews']['cache_ttl']);
}
if(empty($indexnews_html))
{
	$indexnews_html = cot_page_enum($cfg['plugin']['indexnews']['category'], $cfg['plugin']['indexnews']['maxpages'],
		cot_tplfile('indexnews', 'plug'), '', '', true, true, false, '', 'd');
	if ($usr['id'] == 0 && $cache && (int) $cfg['plugin']['news']['cache_ttl'] > 0)
	{
		$cache->disk->store($indexnews_cache_id, $indexnews_html, 'indexnews');
	}
}

$t->assign('INDEX_NEWS', $indexnews_html);