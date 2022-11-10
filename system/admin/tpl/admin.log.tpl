<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col">
                <form action="" class="d-flex align-items-center">
                    {PHP.L.Group}:
                    <select class="form-select mx-3" name="groups" size="1" onchange="redirect(this)">
                        <!-- BEGIN: GROUP_SELECT_OPTION -->
                        <option value="{ADMIN_LOG_OPTION_VALUE_URL}"{ADMIN_LOG_OPTION_SELECTED}>{ADMIN_LOG_OPTION_GRP_NAME}</option>
                        <!-- END: GROUP_SELECT_OPTION -->
                    </select>
                </form>
            </div>
            <!-- IF {PHP.usr.isadmin} -->
            <div class="col text-end">
                <a title="{PHP.L.adm_purgeall}" href="{ADMIN_LOG_URL_PRUNE}"
                   class="ajax btn btn-sm btn-primary">{PHP.L.adm_purgeall}</a>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th class="text-center w-auto">#</th>
                    <th class="text-nowrap">{PHP.L.Date} (GMT)</th>
                    <th class="text-center">{PHP.L.Ip}</th>
                    <th class="text-center">{PHP.L.User}</th>
                    <th class="text-center">{PHP.L.Group}</th>
                    <th class="text-center">{PHP.L.Log}</th>
                </tr>
                </thead>
                <!-- BEGIN: LOG_ROW -->
                <tr>
                    <td class="text-center">{ADMIN_LOG_ROW_LOG_ID}</td>
                    <td class="text-nowrap text-muted">{ADMIN_LOG_ROW_DATE}</td>
                    <td class="text-center">
                        <a href="{ADMIN_LOG_ROW_URL_IP_SEARCH}" class="btn btn-light">{ADMIN_LOG_ROW_LOG_IP}</a>
                    </td>
                    <td class="text-center">
                        <b>{ADMIN_LOG_ROW_LOG_NAME}</b>
                    </td>
                    <td class="text-center">
                        <a href="{ADMIN_LOG_ROW_URL_LOG_GROUP}" class="ajax btn btn-light">{ADMIN_LOG_ROW_LOG_GROUP}</a>
                    </td>
                    <td class="small">{ADMIN_LOG_ROW_LOG_TEXT}</td>
                </tr>
                <!-- END: LOG_ROW -->
            </table>
        </div>
    </div>
    <div class="card-footer">
        <div class="d-flex align-items-baseline">
            <ul class="pagination mb-0 me-3">
                {ADMIN_LOG_PAGNAV}
            </ul>
            <div>{PHP.L.Total}: {ADMIN_LOG_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_LOG_ON_PAGE}</div>
        </div>
    </div>
</div>
<!-- END: MAIN -->