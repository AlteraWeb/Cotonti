<!-- BEGIN: MAIN -->
<div class="mb-3">
    <a href="{PHP|cot_url('admin', "m=page&p=add")}" class="btn btn-sm btn-primary">{PHP.L.Add}</a>
</div>
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card overflow-visible">
    <div class="card-header">
        <form action="{ADMIN_PAGE_FORM_URL}" method="get" class="row align-items-end gx-1">
            <div class="col-sm">
                <label class="uk-form-label">{PHP.L.Search}</label>
                <div class="uk-form-controls">
                    {SEARCH_SQ}
                </div>
            </div>
            <div class="col-sm">
                <label class="uk-form-label">{PHP.L.Category}</label>
                <div class="uk-form-controls">
                    {SEARCH_CAT}
                </div>
            </div>
            <div class="col-sm">
                <label class="uk-form-label">{PHP.L.Show}</label>
                <div class="uk-form-controls">
                    {SEARCH_FILTER}
                </div>
            </div>
            <div class="col-sm">
                <label class="uk-form-label">{PHP.L.Order}</label>
                <div class="uk-form-controls">
                    {SEARCH_ORDER}
                </div>
            </div>
            <div class="col-sm">
                <label class="uk-form-label">&nbsp;</label>
                <div class="uk-form-controls">
                    {SEARCH_WAY}
                </div>
            </div>
            <div class="col-sm-auto">
                <button type="submit" name="search"
                        class="btn btn-primary">{PHP.L.Search}</button>
            </div>
        </form>
    </div>
    <form action="{PHP|cot_url('admin','m=page'),'',true}" id="page_form" method="POST">
        <div class="table-responsive">
            <table class="table table-divider small">
                <thead>
                <tr class="pageitem">
                    <th width="8" class="ps-3">
                        <input type="checkbox" class="form-check-input" data-id="post_arr"
                               onchange="tableCheck('post_arr')">
                    </th>
                    <th width="10" class="d-none d-md-table-cell">ID</th>
                    <th width="300">{PHP.L.Title}</th>
                    <th width="100">{PHP.L.Author}</th>
                    <th width="100" class="d-none d-md-table-cell">{PHP.L.Category}</th>
                    <th width="150" class="d-none d-md-table-cell">{PHP.L.Public_date}</th>
                    <th width="1%" class="uk-text-right">{PHP.L.Actions}</th>
                </tr>
                </thead>
                <tbody>
                <!-- BEGIN: PAGE_ROW -->
                <tr class="pageitem">
                    <td class="ps-3"><input type="checkbox" name="post_arr[]" class="form-check-input"
                                            value="{ADMIN_PAGE_ID}"></td>
                    <td class="d-none d-md-table-cell">{ADMIN_PAGE_ID}</td>
                    <td class="uk-text-truncate">
                        <a href="{ADMIN_PAGE_ID|cot_url("admin", "m=page&p=edit&id=$this")}"
                           class="btn-text">{ADMIN_PAGE_SHORTTITLE}</a>
                    </td>
                    <td class="d-none d-md-table-cell">{ADMIN_PAGE_OWNER_NAME|cot_rc_modify($this, 'target="_blank"')}</td>
                    <td class="d-none d-md-table-cell">
                        <a href="{ADMIN_PAGE_CAT|cot_url("admin", "m=page&c=$this")}">{ADMIN_PAGE_CATTITLE}</a>
                    </td>
                    <td class="text-muted small d-none d-md-table-cell">{ADMIN_PAGE_DATE}</td>
                    <td class="text-end pe-3">
                        <div class="filter">
                            <a class="icon" href="#" data-bs-toggle="dropdown">
                                <i class="bx bx-dots-vertical-rounded fs-5"></i>
                            </a>
                            <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                                <li><a class="dropdown-item" href="{ADMIN_PAGE_URL}" target="_blank">{__('Preview')}</a></li>
                                <li><a class="dropdown-item" href="{ADMIN_PAGE_ID|cot_url("admin", "m=page&p=edit&id=$this")}">{__('Edit')}</a></li>
                                <!-- IF {ADMIN_PAGE_STATE} == 0 -->
                                <li><a class="dropdown-item" href="{ADMIN_PAGE_URL_FOR_UNVALIDATE}">{__('adm_queue_unvalidated')}</a></li>
                                <!-- ENDIF -->
                                <!-- IF {ADMIN_PAGE_STATE} OR {ADMIN_PAGE_STATE} == 1 -->
                                <li><a class="dropdown-item" href="{ADMIN_PAGE_URL_FOR_VALIDATED}">{__('adm_queue_validated')}</a></li>
                                <!-- ENDIF -->
                                <li><a class="dropdown-item text-danger" href="{ADMIN_PAGE_URL_FOR_DELETED}">{__('Delete')}</a></li>
                            </ul>
                    </td>
                </tr>
                <!-- END: PAGE_ROW -->
                </tbody>
                <tfooter>
                    <tr class="pageitem">
                        <th class="ps-3">
                            <input type="checkbox" class="form-check-input" data-id="post_arr" data-part="2"
                                   onchange="tableCheck('post_arr', 2)">
                        </th>
                        <th class="d-none d-md-table-cell">ID</th>
                        <th>{PHP.L.Order_title}</th>
                        <th>{PHP.L.Author}</th>
                        <th class="d-none d-md-table-cell">{PHP.L.Category}</th>
                        <th class="d-none d-md-table-cell">{PHP.L.Public_date}</th>
                        <th class="text-end pe-3">{PHP.L.Actions}</th>
                    </tr>
                </tfooter>
            </table>
        </div>
        <div class="card-footer">
            <div class="row">
                <div class="col-sm-auto d-flex">
                    <select name="post_action" id="post_action" class="form-control">
                        <option value="0">---</option>
                        <option value="delete">{PHP.L.Delete}</option>
                        <option value="validate">{PHP.L.Validate}</option>
                    </select>
                    <button type="submit" class="btn btn-outline-secondary ms-2">{PHP.L.Confirm}</button>
                </div>
                <div class="col-sm">
                    <ul class="pagination">{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul>
                </div>
                <div class="col-sm-auto">
                    {PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_PAGE_ON_PAGE}
                </div>
            </div>
        </div>
    </form>
</div>
<!-- END: MAIN -->
