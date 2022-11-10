<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
    <div class="card-header">
        <div class="btn-group">
            <a href="{ADMIN_DISKCACHE_URL_REFRESH}" class="ajax btn btn-sm btn-primary">{PHP.L.Refresh}</a>
            <a href="{ADMIN_DISKCACHE_URL_PURGE}" class="ajax btn btn-sm btn-primary">{PHP.L.adm_purgeall}</a>
        </div>
    </div>
    <div class="card-body">
        <div class="block">
            <table class="table">
                <thead>
                    <tr>
                        <th class="text-center w-25">{PHP.L.Item}</th>
                        <th class="text-center w-25">{PHP.L.Files}</th>
                        <th class="text-center w-25">{PHP.L.Size}</th>
                        <th class="text-center w-25">{PHP.L.Delete}</th>
                    </tr>
                </thead>
                <!-- BEGIN: ADMIN_DISKCACHE_ROW -->
                <tr>
                    <td class="text-center">{ADMIN_DISKCACHE_ITEM_NAME}</td>
                    <td class="text-center">{ADMIN_DISKCACHE_FILES}</td>
                    <td class="text-center">{ADMIN_DISKCACHE_SIZE}</td>
                    <td class="text-center">
                        <a title="{PHP.L.Delete}" href="{ADMIN_DISKCACHE_ITEM_DEL_URL}"
                                               class="ajax btn btn-danger btn-sm">{PHP.L.Delete}</a>
                    </td>
                </tr>
                <!-- END: ADMIN_DISKCACHE_ROW -->
                <tr class="strong">
                    <td class="text-center">{PHP.L.Total}:</td>
                    <td class="text-center">{ADMIN_DISKCACHE_CACHEFILES}</td>
                    <td class="text-center">{ADMIN_DISKCACHE_CACHESIZE}</td>
                    <td class="text-center">&nbsp;</td>
                </tr>
            </table>
        </div>
    </div>
</div>
<!-- END: MAIN -->