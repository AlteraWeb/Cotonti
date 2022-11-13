<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}

<!-- IF {PHP.usr.isadmin} -->
<div class="mb-2">
    <a href="{ADMIN_REFERERS_URL_PRUNE}" class="btn btn-primary">{PHP.L.adm_purgeall}</a>
    <a href="{ADMIN_REFERERS_URL_PRUNELOWHITS}" class="btn btn-primary">{PHP.L.adm_ref_prunelowhits}</a>
</div>
<!-- ENDIF -->
<!-- IF {PHP.is_ref_empty} -->
<div class="card">
    <div class="card-body p-3">
        <table class="table table-striped">
            <tr>
                <td>{__('Referer')}</td>
                <td>{__('Hits')}</td>
            </tr>
            <!-- ENDIF -->
            <!-- BEGIN: REFERERS_ROW -->
            <tr>
                <td colspan="2"><a href="http://{ADMIN_REFERERS_REFERER}" target="_blank">{ADMIN_REFERERS_REFERER}</a></td>
            </tr>
            <!-- BEGIN: REFERERS_URI -->
            <tr>
                <td>&nbsp; &nbsp; <a href="{ADMIN_REFERERS_URI}" target="_blank">{ADMIN_REFERERS_URI}</a></td>
                <td class="text-end">{ADMIN_REFERERS_COUNT}</td>
            </tr>
            <!-- END: REFERERS_URI -->
            <!-- END: REFERERS_ROW -->
            <!-- IF {PHP.is_ref_empty} -->
        </table>
        <div class="mt-5 d-flex align-center justify-content-between">
            <div>
                <ul class="pagination mb-1">{ADMIN_REFERERS_PAGINATION_PREV}{ADMIN_REFERERS_PAGNAV}{ADMIN_REFERERS_PAGINATION_NEXT}</ul>
            </div>
            <div class="small text-end">
                {__('Total')}: {ADMIN_REFERERS_TOTALITEMS},
                {__('Onpage')}: {ADMIN_REFERERS_COUNTER_ROW}
            </div>
        </div>
    </div>
</div>
<!-- ELSE -->
<div class="card p-3">
    <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">{__('None')}</h1>
        <div>{__('Referer')}: 0</div>
        <div>{__('Hits')}: 0</div>
    </div>
</div>
<!-- ENDIF -->

<!-- END: MAIN -->
