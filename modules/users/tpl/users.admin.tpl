<!-- BEGIN: MAIN -->
<div class="card card-small card-default">
    <div class="card-header">
        <form action="{FILTER_ACTION}" method="get" class="row align-items-end gx-2">
            <div class="col-sm">
                <label class="form-label">{__('Search')}</label>
                {FILTERS_SEARCH}
            </div>
            <div class="col-sm">
                <label class="form-label">{__('Group')}</label>
                <div class="uk-form-controls">
                    {FILTERS_GROUP}
                </div>
            </div>
            <div class="col-sm">
                <label class="form-label">{__('Country')}</label>
                <div class="uk-form-controls">
                    {FILTERS_COUNTRY}
                </div>
            </div>
            <div class="col-sm-auto">
                <button type="submit" class="btn btn-primary">{__('Search')}</button>
            </div>
            <div class="col-sm-auto">
                <a href="{PHP|cot_url("admin", "m=users")}" class="btn btn-outline-secondary"><i class="bi bi-arrow-counterclockwise"></i></a>
            </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-divider small">
            <thead>
            <tr>
                <th width="1%" class="ps-3">
                    <input type="checkbox" class="form-check-input" data-id="post_arr"
                           onchange="tableCheck('post_arr')">
                </th>
                <th width="10" class="d-none d-md-table-cell">{__('User')}</th>
                <th width="100" class="text-center">{__('Maingroup')}</th>
                <th width="100" class="d-none d-md-table-cell text-end">{__('Registered')}</th>
                <th width="1%" class="uk-text-right"></th>
            </tr>
            </thead>
            <tbody>
            <!-- FOR {KEY}, {USER} IN {USERS} -->
            <tr>
                <td class="align-middle ps-3">
                    <input type="checkbox" name="post_arr[]" class="form-check-input" value="{USER.ID}">
                </td>
                <td>
                    <a href="{USER.DETAILSLINK}" class="d-flex align-items-center" target="_blank">
                        <div class="me-2">
                            <img src="{USER.AVATAR_SRC}" alt="Attar" class="rounded-circle bg-dark-light" width="45">
                        </div>
                        <div>
                            <div class="text-black fw-bold">{USER.NICKNAME}</div>
                            <div class="text-black-50">{USER.EMAIL|strip_tags($this)}</div>
                        </div>
                    </a>
                </td>
                <td class="text-center">
                    <div>{USER.MAINGRPSTARS}</div>
                    <div>
                        <a href="{USER.MAINGRPID|cot_url("admin", "m=users&g=$this")}">{USER.MAINGRPNAME}</a>
                    </div>
                </td>
                <td class="align-middle text-black-50 text-end">{USER.REGDATE}</td>
                <td class="align-middle text-end">
                    <a href="{USER.ID|cot_url("admin", "m=users&n=edit&id=$this")}" class="btn btn-outline-primary btn-sm">
                        <i class="bi bi-pencil-fill"></i>
                    </a>
                </td>
            </tr>
            <!-- ENDFOR -->
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        <div class="row">
            <div class="col-sm-auto"></div>
            <div class="col-sm"></div>
            <div class="col-sm-auto">
                <div>
                    <ul class="pagination mb-1">{PAGE_PREV}{PAGE_NAV}{PAGE_NEXT}</ul>
                    <div class="small text-end">
                        {__('Total')}: {TOTAL_USERS},
                        {__('Onpage')}: {USERS_ON_PAGE}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- END: MAIN -->
