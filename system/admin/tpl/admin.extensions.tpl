<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}

<!-- BEGIN: DETAILS -->
<div class="card">
    <div class="card-body">
        <h5 class="card-title">
            <!-- IF {ADMIN_EXTENSIONS_ICO} -->
            <img src="{ADMIN_EXTENSIONS_ICO}"/>
            <!-- ELSE -->
            <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
            <!-- ENDIF -->
            {ADMIN_EXTENSIONS_TYPE} {ADMIN_EXTENSIONS_NAME}
        </h5>

        <div class="table-responsive">
            <div class="btn-group mb-3 text-nowrap">
                <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL} -->
                <a title="{PHP.L.Open}" href="{ADMIN_EXTENSIONS_JUMPTO_URL}"
                   class="btn btn-primary btn-sm">
                    <i class="bi bi-folder-open"></i> {PHP.L.Open}
                </a>
                <!-- ENDIF -->
                <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS} -->
                <a title="{PHP.L.Administration}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}"
                   class="btn btn-primary btn-sm"><i
                            class="mdi mdi-barcode-scan"></i> {PHP.L.Administration}</a>
                <!-- ENDIF -->
                <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} > 0 -->
                <a title="{PHP.L.Configuration}" href="{ADMIN_EXTENSIONS_CONFIG_URL}"
                   class="btn btn-primary btn-sm"><i
                            class="mdi mdi-settings"></i> {PHP.L.Configuration} ({ADMIN_EXTENSIONS_TOTALCONFIG})</a>
                <!-- ENDIF -->
                <!-- IF {PHP.isinstalled} -->
                <a title="{PHP.L.Rights}" href="{ADMIN_EXTENSIONS_RIGHTS}"
                   class="btn btn-danger btn-sm"><i class="mdi mdi-lock"></i> {PHP.L.short_rights}</a>
                <!-- ENDIF -->
                <!-- IF {ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT} -->
                <a title="{PHP.L.Structure}" href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}"
                   class="btn btn-primary btn-sm"><i class="mdi mdi-sitemap"></i> {PHP.L.Structure}</a>
                <!-- ENDIF -->
            </div>
            <table class="table table-sm table-striped">
                <tr>
                    <td>{PHP.L.Code}:</td>
                    <td>{ADMIN_EXTENSIONS_CODE}</td>
                </tr>
                <!-- IF {ADMIN_EXTENSIONS_DESCRIPTION} -->
                <tr>
                    <td class="uk-width-1-6">{PHP.L.Description}</td>
                    <td>{ADMIN_EXTENSIONS_DESCRIPTION}</td>
                </tr>
                <!-- ENDIF -->
                <tr>
                    <td>{PHP.L.Version}:</td>
                    <td>
                        <!-- IF {PHP.isinstalled} AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
                        <span class="badge bg-warning">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span>
                        <span class="badge bg-success">{ADMIN_EXTENSIONS_VERSION}</span>
                        <!-- ELSE -->
                        <span class="badge bg-primary">{ADMIN_EXTENSIONS_VERSION}</span>
                        <!-- ENDIF -->
                    </td>
                </tr>
                <!-- IF {ADMIN_EXTENSIONS_DATE} -->
                <tr>
                    <td>{PHP.L.Date}:</td>
                    <td>{ADMIN_EXTENSIONS_DATE}</td>
                </tr>
                <!-- ENDIF -->
                <!-- IF {ADMIN_EXTENSIONS_AUTHOR} -->
                <tr>
                    <td>{PHP.L.Author}:</td>
                    <td>{ADMIN_EXTENSIONS_AUTHOR}</td>
                </tr>
                <!-- ENDIF -->
                <!-- IF {ADMIN_EXTENSIONS_COPYRIGHT} -->
                <tr>
                    <td>{PHP.L.Copyright}:</td>
                    <td class="uk-text-small uk-text-success">{ADMIN_EXTENSIONS_COPYRIGHT}</td>
                </tr>
                <!-- ENDIF -->
                <!-- IF {ADMIN_EXTENSIONS_NOTES} -->
                <tr>
                    <td>{PHP.L.Notes}:</td>
                    <td>{ADMIN_EXTENSIONS_NOTES}</td>
                </tr>
                <!-- ENDIF -->
                <!-- BEGIN: DEPENDENCIES -->
                <tr>
                    <td>{ADMIN_EXTENSIONS_DEPENDENCIES_TITLE}:</td>
                    <td>
                        <!-- BEGIN: DEPENDENCIES_ROW -->
                        <a href="{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_URL}">
                            <span class="badge rounded-pill bg-<!-- IF {ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS} --><!-- IF {ADMIN_EXTENSIONS_DEPENDENCIES_ROW_CLASS} == 'highlight_red' -->danger<!-- ELSE -->success<!-- ENDIF --><!-- ELSE -->primary<!--ENDIF -->">{ADMIN_EXTENSIONS_DEPENDENCIES_ROW_NAME}</span>
                        </a>
                        <!-- END: DEPENDENCIES_ROW -->
                    </td>
                </tr>
                <!-- END: DEPENDENCIES -->
                <tr>
                    <td class="text-right">{PHP.L.Action}:</td>
                    <td>
                        <div class="btn-group text-nowrap">
                            <!-- IF !{PHP.isinstalled} AND {PHP.dependencies_satisfied} -->
                            <a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_INSTALL_URL}"
                               class="btn btn-outline-secondary btn-sm"><i
                                        class="mdi mdi-server-plus"></i> {PHP.L.adm_opt_install}</a>
                            <!-- ENDIF -->
                            <!-- IF {PHP.isinstalled} -->
                            <!-- IF {PHP.exists} -->
                            <a title="{PHP.L.adm_opt_install_explain}" href="{ADMIN_EXTENSIONS_UPDATE_URL}"
                               class="btn btn-outline-secondary btn-sm"><i
                                        class="mdi mdi-refresh"></i> {PHP.L.adm_opt_update}</a>
                            <!-- ENDIF -->
                            <a title="{PHP.L.adm_opt_uninstall_explain}" href="{ADMIN_EXTENSIONS_UNINSTALL_URL}"
                               class="btn btn-outline-secondary btn-sm"><i
                                        class="mdi mdi-close"></i> {PHP.L.adm_opt_uninstall}</a>
                            <a title="{PHP.L.adm_opt_pauseall_explain}" href="{ADMIN_EXTENSIONS_PAUSE_URL}"
                               class="btn btn-outline-secondary btn-sm"><i
                                        class="mdi mdi-pause"></i> {PHP.L.adm_opt_pauseall}</a>
                            <!-- IF {PHP.exists} -->
                            <a title="{PHP.L.adm_opt_unpauseall_explain}" href="{ADMIN_EXTENSIONS_UNPAUSE_URL}"
                               class="btn btn-outline-secondary btn-sm"><i
                                        class="mdi mdi-play"></i> {PHP.L.adm_opt_unpauseall}</a>
                            <!-- ENDIF -->
                            <!-- ENDIF -->
                        </div>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#parts" aria-controls="parts">
    {__('Parts')}
</button>
<button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#tags" aria-controls="tags">
    {__('Tags')}
</button>

<div class="offcanvas offcanvas-bottom h-75  overflow-auto" tabindex="-1" id="tags" aria-labelledby="tagsLabel">
    <div class="container">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="tagsLabel">{__('Tags')}</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <table class="table">
                <tbody>
                <!-- BEGIN: ROW_ERROR_TAGS -->
                <tr>
                    <td class="text-danger">
                        <span class="uk-label uk-label-warning">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1} {ADMIN_EXTENSIONS_DETAILS_ROW_PART}</span>
                        <div>
                            {PHP.L.None}
                        </div>
                    </td>
                </tr>
                <!-- END: ROW_ERROR_TAGS -->
                <!-- BEGIN: ROW_TAGS -->
                <tr class="text-primary">
                    <td>
                        <span class="uk-label uk-label-primary">{ADMIN_EXTENSIONS_DETAILS_ROW_I_1} {ADMIN_EXTENSIONS_DETAILS_ROW_PART}</span>
                        <div class="uk-overflow-auto">
                            {ADMIN_EXTENSIONS_DETAILS_ROW_LISTTAGS}
                        </div>
                    </td>
                </tr>
                <!-- END: ROW_TAGS -->
                </tbody>
            </table>
        </div>
    </div>
</div>

<div class="offcanvas offcanvas-bottom h-75  overflow-auto" tabindex="-1" id="parts" aria-labelledby="partsLabel">
    <div class="container">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title" id="partsLabel">{__('Parts')}</h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <table class="table">
                <thead>
                <tr>
                    <th>#</th>
                    <th>{PHP.L.Part}</th>
                    <th>{PHP.L.File}</th>
                    <th>{PHP.L.Hooks}</th>
                    <th>{PHP.L.Order}</th>
                    <th>{PHP.L.Status}</th>
                    <th>{PHP.L.Action}</th>
                </tr>
                </thead>
                <tbody>
                <!-- BEGIN: ROW_ERROR_PART -->
                <tr>
                    <td colspan="3">{ADMIN_EXTENSIONS_DETAILS_ROW_X}</td>
                    <td colspan="4">{ADMIN_EXTENSIONS_DETAILS_ROW_ERROR}</td>
                </tr>
                <!-- END: ROW_ERROR_PART -->
                <!-- BEGIN: ROW_PART -->
                <tr>
                    <td>{ADMIN_EXTENSIONS_DETAILS_ROW_I_1}</td>
                    <td>{ADMIN_EXTENSIONS_DETAILS_ROW_PART}</td>
                    <td>{ADMIN_EXTENSIONS_DETAILS_ROW_FILE}</td>
                    <td>{ADMIN_EXTENSIONS_DETAILS_ROW_HOOKS}</td>
                    <td>{ADMIN_EXTENSIONS_DETAILS_ROW_ORDER}</td>
                    <td>{ADMIN_EXTENSIONS_DETAILS_ROW_STATUS}</td>
                    <td>
                        <!-- BEGIN: ROW_PART_NOTINSTALLED -->
                        &ndash;
                        <!-- END: ROW_PART_NOTINSTALLED -->
                        <!-- BEGIN: ROW_PART_PAUSE -->
                        <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_PAUSEPART_URL}"
                           class="btn btn-outline-secondary btn-sm"> {PHP.L.adm_opt_pause}</a>
                        <!-- END: ROW_PART_PAUSE -->
                        <!-- BEGIN: ROW_PART_UNPAUSE -->
                        <a href="{ADMIN_EXTENSIONS_DETAILS_ROW_UNPAUSEPART_URL}"
                           class="btn btn-primary btn-sm">{PHP.L.adm_opt_unpause}</a>
                        <!-- END: ROW_PART_UNPAUSE -->
                    </td>
                </tr>
                <!-- END: ROW_PART -->
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- END: DETAILS -->

<!-- BEGIN: DEFAULT -->
<div class="card">
    <div class="card-header">
        <input class="form-control" type="text" placeholder="{__('Search')}" id="search-text"
               onkeyup="tableSearch('ext-table', 'search-text')">
    </div>
    <div class="card-body p-0 table-responsive">
        <table class="table align-middle mb-0" id="ext-table">
            <thead>
            <tr>
                <th>&nbsp;</th>
                <th class="coltop w-auto">{PHP.L.Name} {PHP.L.adm_clicktoedit}</th>
                <th>{PHP.L.Code}</th>
                <th>{PHP.L.Type}</th>
                <th class="text-center">{PHP.L.Version}</th>
                <th class="text-center">{PHP.L.Parts}</th>
                <th>{PHP.L.Status}</th>
                <th width="1%"></th>
            </tr>
            </thead>

            <!-- BEGIN: SECTION-->
            <!-- BEGIN: ROW -->
            <!-- BEGIN: ROW_ERROR_EXT -->
            <tr>
                <td>{ADMIN_EXTENSIONS_X_ERR}</td>
                <td colspan="5">{ADMIN_EXTENSIONS_ERROR_MSG}</td>
            </tr>
            <!-- END: ROW_ERROR_EXT -->
            <tr>
                <td class="text-center">
                    <!-- IF {ADMIN_EXTENSIONS_ICO} -->
                    <img src="{ADMIN_EXTENSIONS_ICO}"/>
                    <!-- ELSE -->
                    <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
                    <!-- ENDIF -->
                </td>
                <td>
                    <a href="{ADMIN_EXTENSIONS_DETAILS_URL}"><strong>{ADMIN_EXTENSIONS_NAME}</strong></a>
                    <p class="small">{ADMIN_EXTENSIONS_DESCRIPTION|cot_cutstring($this,60)}</p>
                </td>
                <td>{ADMIN_EXTENSIONS_CODE_X}</td>
                <td class="small">
                    <!-- IF {PHP.type} == plug -->
                    <span class="text-info">{ADMIN_EXTENSIONS_TYPE}</span>
                    <!-- ELSE -->
                    <span class="text-primary">{ADMIN_EXTENSIONS_TYPE}</span>
                    <!-- ENDIF -->
                </td>
                <td class="text-center">
                    <!-- IF {PHP.part_status} != 3 AND {ADMIN_EXTENSIONS_VERSION_COMPARE} > 0 -->
                    <span class="badge border-primary border-1 text-warning">{ADMIN_EXTENSIONS_VERSION_INSTALLED}</span>
                    / <span class="badge border-primary border-1 text-success">{ADMIN_EXTENSIONS_VERSION}</span>
                    <!-- ELSE -->
                    <span class="badge border-primary border-1 text-primary">{ADMIN_EXTENSIONS_VERSION}</span>
                    <!-- ENDIF -->
                </td>
                <td class="text-center">
                    <span class="badge bg-light text-dark">{ADMIN_EXTENSIONS_PARTSCOUNT}</span>
                </td>
                <td>
                    <!-- IF {PHP.part_status} == 1 -->
                    <span class="badge bg-success">
                            <i class="bi bi-check-circle me-1"></i> {ADMIN_EXTENSIONS_STATUS}
                        </span>
                    <!-- ENDIF -->
                    <!-- IF {PHP.part_status} == 2 -->
                    <span class="badge bg-warning">
                            <i class="bi bi-exclamation-triangle me-1"></i> {ADMIN_EXTENSIONS_STATUS}
                        </span>
                    <!-- ENDIF -->
                    <!-- IF {PHP.part_status} == 3 -->
                    <span class="badge bg-secondary">
                            <i class="bi bi-info-circle me-1"></i> {ADMIN_EXTENSIONS_STATUS}
                        </span>
                    <!-- ENDIF -->
                </td>
                <td class="action px-3">
                    <!-- IF {ADMIN_EXTENSIONS_VERSION_INSTALLED} -->
                    <div class="dropdown">
                        <button class="btn btn-sm btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                aria-expanded="false">
                            {PHP.L.Action}
                        </button>
                        <ul class="dropdown-menu">
                            <!-- IF {ADMIN_EXTENSIONS_TOTALCONFIG} -->
                            <li>
                                <a href="{ADMIN_EXTENSIONS_EDIT_URL}" class="dropdown-item">
                                    {PHP.L.Configuration}
                                </a>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {PHP.ifstruct} -->
                            <li>
                                <a href="{ADMIN_EXTENSIONS_JUMPTO_URL_STRUCT}" class="dropdown-item">
                                    {PHP.L.Structure}
                                </a>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {PHP.totalinstalled} -->
                            <li>
                                <a href="{ADMIN_EXTENSIONS_RIGHTS_URL}" class="dropdown-item">
                                    {PHP.L.Rights}
                                </a>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {PHP.ifthistools} -->
                            <li>
                                <a href="{ADMIN_EXTENSIONS_JUMPTO_URL_TOOLS}" class="dropdown-item">
                                    {PHP.L.Administration}
                                </a>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {PHP.if_plg_standalone} -->
                            <li>
                                <a href="{ADMIN_EXTENSIONS_JUMPTO_URL}" class="dropdown-item">
                                    {PHP.L.Open}
                                </a>
                            </li>
                            <!-- ENDIF -->
                        </ul>
                    </div>
                    <!-- ELSE -->
                    <a href="{ADMIN_EXTENSIONS_DETAILS_URL}&b=install"
                       class="btn btn-sm btn-outline-primary">{PHP.L.adm_opt_install}</a>
                    <!-- ENDIF -->
                </td>
            </tr>
            <!-- END: ROW -->
            <!-- BEGIN: ROW_ERROR -->
            <tr>
                <td>{ADMIN_EXTENSIONS_X}</td>
                <td colspan="5">{PHP.L.adm_opt_setup_missing}</td>
            </tr>
            <!-- END: ROW_ERROR -->
            <!-- END: SECTION -->
        </table>
    </div>
</div>
<!-- END: DEFAULT -->

<!-- END: MAIN -->
