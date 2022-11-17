<!-- BEGIN: MAIN -->
<div class="card overflow-visible">
    <div class="table-responsive">
        <table class="table table-hover small">
            <thead>
            <tr>
                <th>{PHP.L.User}</th>
                <th>{PHP.L.Files}</th>
                <th class="text-end">{PHP.L.Edit}</th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN: ALLPFS_ROW -->
            <tr>
                <td>{ADMIN_ALLPFS_ROW_USER}</td>
                <td>{ADMIN_ALLPFS_ROW_COUNT}</td>
                <td class="text-end"><a href="{ADMIN_ALLPFS_ROW_URL}">{PHP.R.icon_prefs}</a></td>
            </tr>
            <!-- END: ALLPFS_ROW -->
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        <div class="row">
            <div class="col-sm-4 d-flex">
                <span>{PHP.L.Total}: {ADMIN_ALLPFS_TOTALITEMS}, {PHP.L.comm_on_page}: {ADMIN_ALLPFS_ON_PAGE}</span>
            </div>
            <div class="col-sm-auto">
                <ul class="pagination">
                    {ADMIN_ALLPFS_PAGINATION_PREV}{ADMIN_ALLPFS_PAGNAV}{ADMIN_ALLPFS_PAGINATION_NEXT}
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->