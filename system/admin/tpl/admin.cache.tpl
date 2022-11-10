<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
    <div class="card-header">
        <div class="btn-group">
            <a href="{ADMIN_CACHE_URL_REFRESH}" class="ajax btn btn-sm btn-primary">{PHP.L.Refresh}</a>
            <a href="{ADMIN_CACHE_URL_PURGE}" class="ajax btn btn-sm btn-primary">{PHP.L.adm_purgeall}</a>
            <a href="{ADMIN_CACHE_URL_SHOWALL}" class="ajax btn btn-sm btn-primary">{PHP.L.adm_cache_showall}</a>
        </div>
    </div>
    <div class="card-body">
        <!-- BEGIN: ADMIN_CACHE_MEMORY -->
        <div class="block">
            <h5 class="card-title">{ADMIN_CACHE_MEMORY_DRIVER}</h5>
            <p>
            <div class="bar_back">
                <div class="bar_front" style="width:{ADMIN_CACHE_MEMORY_PERCENTBAR}%;"></div>
            </div>
            {PHP.L.Available}: {ADMIN_CACHE_MEMORY_AVAILABLE} / {ADMIN_CACHE_MEMORY_MAX} {PHP.L.bytes}
            </p>
        </div>
        <!-- END: ADMIN_CACHE_MEMORY -->
        <div class="block">
            <h5 class="card-title">{PHP.L.Database}</h5>
            <table class="table">
                <thead>
                <tr>
                    <th class="text-center width20">{PHP.L.Item}</th>
                    <th class="text-center width10">{PHP.L.Expire}</th>
                    <th class="text-center width10">{PHP.L.Size}</th>
                    <th class="text-center width50">{PHP.L.Value}</th>
                    <th class="text-center width10">{PHP.L.Delete}</th>
                </tr>
                </thead>
                <!-- BEGIN: ADMIN_CACHE_ROW -->
                <tr>
                    <td>{ADMIN_CACHE_ITEM_NAME}</td>
                    <td class="text-center">{ADMIN_CACHE_EXPIRE}</td>
                    <td class="text-center">{ADMIN_CACHE_SIZE}</td>
                    <td>{ADMIN_CACHE_VALUE}</td>
                    <td class="text-center">
                        <a title="{PHP.L.Delete}" href="{ADMIN_CACHE_ITEM_DEL_URL}"
                           class="ajax btn btn-danger btn-sm">{PHP.L.Delete}</a>
                    </td>
                </tr>
                <!-- END: ADMIN_CACHE_ROW -->
                <tr class="strong">
                    <td class="text-center" colspan="2">{PHP.L.Total}:</td>
                    <td class="text-center">{ADMIN_CACHE_CACHESIZE}</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</div>
<!-- END: MAIN -->
