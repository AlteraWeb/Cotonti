<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}

<!-- BEGIN: ADMIN_USERS_DEFAULT -->
<div class="card pt-3">
    <div class="card-body">
        <table class="table">
            <thead>
            <tr>
                <th>&nbsp;</th>
                <th>{__('Groups')}</th>
                <th>{__('Members')}</th>
                <th>{__('Enabled')}</th>
                <th>{__('Action')}</th>
            </tr>
            </thead>
            <!-- BEGIN: USERS_ROW -->
            <tr>
                <td>
                    <!-- IF {PHP.hidden_groups} AND {ADMIN_USERS_ROW_GRP_HIDDEN} == Yes -->
                        {PHP.R.admin_icon_usergroup0}
                    <!-- ELSE -->
                        {PHP.R.admin_icon_usergroup1}
                    <!-- ENDIF -->
                </td>
                <td>
                    <div class="strong">
                        <a href="{ADMIN_USERS_ROW_GRP_TITLE_URL}" title="{__('Edit')}">
                            {ADMIN_USERS_ROW_GRP_NAME} (#{ADMIN_USERS_ROW_GRP_ID})
                        </a>
                    </div>
                    <div class="small">{ADMIN_USERS_ROW_GRP_DESC}</div>
                </td>
                <td>
                   <span class="badge <!-- IF {ADMIN_USERS_ROW_GRP_COUNT_MEMBERS} -->bg-primary<!-- ELSE -->bg-secondary<!-- ENDIF -->">{ADMIN_USERS_ROW_GRP_COUNT_MEMBERS}</span>
                </td>
                <td>
                    <span class="badge <!-- IF {ADMIN_USERS_ROW_GRP_DISABLED_BOOLEAN} -->bg-success<!-- ELSE -->bg-dangerда<!-- ENDIF -->">{ADMIN_USERS_ROW_GRP_DISABLED}</span>
                </td>
                <td>
                    <div class="btn-group">
                        <!-- IF !{ADMIN_USERS_ROW_GRP_SKIPRIGHTS} -->
                        <a href="{ADMIN_USERS_ROW_GRP_RIGHTS_URL}" class="btn btn-primary btn-sm">
                            {__('short_rights')}
                        </a>
                        <!-- ENDIF -->
                        <a href="{ADMIN_USERS_ROW_GRP_JUMPTO_URL}" class="btn btn-secondary btn-sm">
                            {__('short_open')}
                        </a>
                    </div>
                </td>
            </tr>
            <!-- END: USERS_ROW -->
        </table>
    </div>
</div>

<div class="card pt-3">
    <form name="addlevel" id="addlevel" action="{ADMIN_USERS_FORM_URL}" method="post">
        <div class="card-body">
            <div class="card-title">{__('Add')}</div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">{__('Name')} <span class="text-danger">*</span></label>
                    {ADMIN_USERS_NGRP_NAME}
                </div>
                <div class="col-md-6">
                    <label class="form-label">{__('Title')} <span class="text-danger">*</span></label>
                    {ADMIN_USERS_NGRP_TITLE}
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">{__('Description')} <span class="text-danger">*</span></label>
                    {ADMIN_USERS_NGRP_DESC}
                </div>
                <div class="col-md-6">
                    <label class="form-label">{__('Icon')}</label>
                    {ADMIN_USERS_NGRP_ICON}
                </div>
            </div>
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">{__('Alias')}</label>
                    {ADMIN_USERS_NGRP_ALIAS}
                </div>
                <div class="col-md-6">
                    <label class="form-label">{__('Level')}</label>
                    {ADMIN_USERS_NGRP_RLEVEL}
                </div>
            </div>
            <!-- IF {PHP.pfs_is_active} -->
            <div class="row mb-3">
                <div class="col-md-6">
                    <label class="form-label">{__('adm_maxsizesingle')}</label>
                    {ADMIN_USERS_NGRP_PFS_MAXFILE}
                </div>
                <div class="col-md-6">
                    <label class="form-label">{__('adm_maxsizeallpfs')}</label>
                    {ADMIN_USERS_NGRP_PFS_MAXTOTAL}
                </div>
            </div>
            <!-- ENDIF -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <label class="form-label">{__('adm_skiprights')}</label>
                    {ADMIN_USERS_NGRP_SKIPRIGHTS}
                </div>
                <div class="col-md-4">
                    <label class="form-label">{__('adm_rights_maintenance')}</label>
                    {ADMIN_USERS_NGRP_MAINTENANCE}
                </div>
                <div class="col-md-4">
                    <label class="form-label">{__('Disabled')}</label>
                    {ADMIN_USERS_NGRP_DISABLED}
                </div>
            </div>
            <div class="row mb-3">
                <!-- IF {PHP.hidden_groups} -->
                <div class="col-md-6">
                    <label class="form-label">{__('Hidden')}</label>
                    {ADMIN_USERS_NGRP_HIDDEN}
                </div>
                <!-- ENDIF -->
                <div class="col-md-6">
                    <label class="form-label">{__('adm_copyrightsfrom')} <span
                                class="text-danger">*</span></label>
                    {ADMIN_USERS_FORM_SELECTBOX_GROUPS}
                </div>
            </div>
        </div>
        <div class="card-footer">
            <button type="submit" class="btn btn-primary">{__('Add')}</button>
        </div>
    </form>
</div>
<!-- END: ADMIN_USERS_DEFAULT -->

<!-- BEGIN: ADMIN_USERS_EDIT -->
<div class="card pt-3">
    <div class="card-body">
        <form name="editlevel" id="editlevel" action="{ADMIN_USERS_EDITFORM_URL}" method="post">
            <div class="card-body">
                <div class="card-title">{__('Add')}</div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">{__('Name')} <span class="text-danger">*</span></label>
                        {ADMIN_USERS_EDITFORM_GRP_NAME}
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">{__('Title')} <span class="text-danger">*</span></label>
                        {ADMIN_USERS_EDITFORM_GRP_TITLE}
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">{__('Description')} <span class="text-danger">*</span></label>
                        {ADMIN_USERS_EDITFORM_GRP_DESC}
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">{__('Icon')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_ICON}
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">{__('Alias')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_ALIAS}
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">{__('Level')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_RLEVEL}
                    </div>
                </div>
                <!-- IF {PHP.pfs_is_active} -->
                <div class="row mb-3">
                    <div class="col-md-6">
                        <label class="form-label">{__('adm_maxsizesingle')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_PFS_MAXFILE}
                    </div>
                    <div class="col-md-6">
                        <label class="form-label">{__('adm_maxsizeallpfs')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_PFS_MAXTOTAL}
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="row mb-3">
                    <div class="col-md-4">
                        <label class="form-label">{__('adm_skiprights')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_SKIPRIGHTS}
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">{__('adm_rights_maintenance')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_MAINTENANCE}
                    </div>
                    <div class="col-md-4">
                        <label class="form-label">{__('Disabled')}</label>
                        {ADMIN_USERS_EDITFORM_GRP_DISABLED}
                    </div>
                </div>
                <div class="row mb-3">
                    <!-- IF {PHP.hidden_groups} -->
                    <div class="col-md-6">
                        <label class="form-label">{__('Hidden')}:</label>
                        {ADMIN_USERS_EDITFORM_GRP_HIDDEN}
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
            <div class="card-footer">
                <div class="row">
                    <div class="col-md-6">
                        <div class="btn-group">
                            <a href="{ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT_URL}" class="btn btn-outline-primary">{__('Members')}: {ADMIN_USERS_EDITFORM_GRP_MEMBERSCOUNT}</a>
                            <!-- IF !{ADMIN_USERS_EDITFORM_SKIPRIGHTS} -->
                            <a href="{ADMIN_USERS_EDITFORM_RIGHT_URL}" class="btn btn-primary">{PHP.L.Rights}</a>
                            <!-- ENDIF -->
                        </div>
                    </div>
                    <div class="col-md-6 text-end">
                        <div class="btn-group">
                            <button type="submit" class="btn btn-primary">{__('Update')}</button>
                            <!-- IF {PHP.g} > 5 -->
                            <a href="{ADMIN_USERS_EDITFORM_DEL_CONFIRM_URL}" class="btn btn-danger confirmLink">{__('Delete')}</a>
                            <!-- ENDIF -->
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- END: ADMIN_USERS_EDIT -->

<!-- END: MAIN -->
