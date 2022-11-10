<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
        <!-- BEGIN: EDIT -->
        <div class="card-body p-3">
            {ADMIN_CONFIG_EDIT_CUSTOM}
            <form name="saveconfig" id="saveconfig" action="{ADMIN_CONFIG_FORM_URL}" method="post" class="ajax">
                <table class="table align-middle">
                    <tr>
                        <td>{PHP.L.Parameter}</td>
                        <td class="width60">{PHP.L.Value}</td>
                        <td class="text-end"></td>
                    </tr>
                    <!-- BEGIN: ADMIN_CONFIG_ROW -->
                    <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                    <tr>
                        <td class="group_begin" colspan="3">
                            <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                        </td>
                    </tr>
                    <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
                    <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
                    <tr>
                        <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
                        <td>
                            {ADMIN_CONFIG_ROW_CONFIG}
                            <div class="text-muted small">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                        </td>
                        <td class="text-end">
                            <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="btn btn-outline-secondary">{PHP.L.Reset}</a>
                        </td>
                    </tr>
                    <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                    <!-- END: ADMIN_CONFIG_ROW -->
                </table>
                <input type="submit" class="submit btn btn-primary" value="{PHP.L.Update}"/>
            </form>
        </div>
        <!-- END: EDIT -->
        <!-- BEGIN: DEFAULT -->
        <div class="card-header">
            <input class="form-control" type="text" placeholder="{__('Search')}" id="search-text"
                   onkeyup="tableSearch('ext-table', 'search-text')">
        </div>
        <div class="card-body p-0 table-responsive">
            <table class="table align-middle mb-0" id="ext-table">
                <thead>
                <tr>
                    <th width="60px">&nbsp;</th>
                    <th class="coltop w-auto">{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
                    <th>{PHP.L.Code}</th>
                    <th width="1%">{PHP.L.Type}</th>
                </tr>
                </thead>
                <!-- BEGIN: ADMIN_CONFIG_COL -->
                    <!-- BEGIN: ADMIN_CONFIG_ROW -->
                    <tr>
                        <td class="text-center">
                            <!-- IF {ADMIN_CONFIG_ROW_ICO} -->
                            <img src="{ADMIN_CONFIG_ROW_ICO}"/>
                            <!-- ELSE -->
                            <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
                            <!-- ENDIF -->
                        </td>
                        <td>
                            <a href="{ADMIN_CONFIG_ROW_URL}">{ADMIN_CONFIG_ROW_NAME}</a>
                        </td>
                        <td>{PHP.row.config_cat}</td>
                        <td class="small">
                            <!-- IF {PHP.type} == core -->
                            <span class="text-warning">{ADMIN_CONFIG_ROW_TYPE}</span>
                            <!-- ENDIF -->
                            <!-- IF {PHP.type} == module -->
                            <span class="text-primary">{ADMIN_CONFIG_ROW_TYPE}</span>
                            <!-- ENDIF -->
                            <!-- IF {PHP.type} == plug -->
                            <span class="text-info">{ADMIN_CONFIG_ROW_TYPE}</span>
                            <!-- ENDIF -->
                        </td>
                    </tr>
                    <!-- END: ADMIN_CONFIG_ROW -->
                <!-- END: ADMIN_CONFIG_COL -->
            </table>
        </div>
        <!-- END: DEFAULT -->
    </div>
</div>
<!-- END: MAIN -->
