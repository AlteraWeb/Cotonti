<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="mb-2">
    <a class="btn btn-sm btn-primary" title="{PHP.L.Configuration}"
       href="{ADMIN_POLLS_CONF_URL}">{PHP.L.Configuration}</a>
</div>
<div class="card overflow-visible">
    <div class="card-header">
        <div class="row">
            <label class="col-sm-8 col-form-label">{PHP.L.poll}:</label>
            <div class="uk-form-controls col-sm-4">
                <select class="form-select" name="jumpbox" size="1" onchange="redirect(this)">
                    <!-- BEGIN: POLLS_ROW_FILTER -->
                    <option value="{ADMIN_POLLS_ROW_FILTER_VALUE}" {ADMIN_POLLS_ROW_FILTER_CHECKED}>
                        {ADMIN_POLLS_ROW_FILTER_NAME}
                    </option>
                    <!-- END: POLLS_ROW_FILTER -->
                </select>
            </div>
        </div>
    </div>
    <div class="table-responsive">
        <table class="table table-hover small">
            <thead>
            <tr>
                <th>{PHP.L.Date}</th>
                <th>{PHP.L.Type}</th>
                <th>{PHP.L.Poll} {PHP.L.adm_clicktoedit}</th>
                <th class="text-end">{PHP.L.Votes}</th>
                <th class="text-end">{PHP.L.Action}</th>
            </tr>
            </thead>
            <tbody>
            <!-- BEGIN: POLLS_ROW -->
            <tr>
                <td>{ADMIN_POLLS_ROW_POLL_CREATIONDATE}</td>
                <td>{ADMIN_POLLS_ROW_POLL_TYPE}</td>
                <td>{ADMIN_POLLS_ROW_POLL_LOCKED}<a href="{ADMIN_POLLS_ROW_POLL_URL}">{ADMIN_POLLS_ROW_POLL_TEXT}</a>
                </td>
                <td class="text-end">{ADMIN_POLLS_ROW_POLL_TOTALVOTES}</td>
                <td class="text-end">
                    <div class="btn-group">
                        <!-- IF !{ADMIN_POLLS_ROW_POLL_LOCKED} -->
                        <a class="btn btn-sm btn-warning" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.Lock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}"><i class="bi-lock"></i></a>
                        <!-- ELSE -->
                        <a class="btn btn-sm btn-light" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.Unlock}" href="{ADMIN_POLLS_ROW_POLL_URL_LCK}"><i class="bi-unlock"></i></a>
                        <!-- ENDIF -->
                        <a class="btn btn-sm btn-danger" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.Delete}" href="{ADMIN_POLLS_ROW_POLL_URL_DEL}"><i class="bi-x-circle"></i></a>
                        <a class="btn btn-sm btn-success" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.Reset}" href="{ADMIN_POLLS_ROW_POLL_URL_RES}"><i class="bi-arrow-repeat"></i></a>
                        <a class="btn btn-sm btn-info" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.adm_polls_bump}" href="{ADMIN_POLLS_ROW_POLL_URL_BMP}"><i class="bi-arrow-up"></i></a>
                        <a class="btn btn-sm btn-light" data-bs-toggle="tooltip" data-bs-placement="top" data-bs-title="{PHP.L.Open}" href="{ADMIN_POLLS_ROW_POLL_URL_OPN}"><i class="bi-reply"></i></a>
                    </div>

                </td>
            </tr>
            <!-- END: POLLS_ROW -->
            <!-- BEGIN: POLLS_ROW_EMPTY -->
            <tr>
                <td colspan="5">{PHP.L.adm_polls_nopolls}</td>
            </tr>
            <!-- END: POLLS_ROW_EMPTY -->
            </tbody>
        </table>
    </div>
    <div class="card-footer">
        <div class="row">
            <div class="col-sm-4 d-flex">
                <span>{PHP.L.Total}: {ADMIN_POLLS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_POLLS_ON_PAGE}</span>
            </div>
            <div class="col-sm-auto">
                <ul class="pagination">
                    {ADMIN_POLLS_PAGINATION_PREV}{ADMIN_POLLS_PAGNAV}{ADMIN_POLLS_PAGINATION_NEXT}
                </ul>
            </div>
        </div>
    </div>
</div>

<p>

</p>
<div class="card overflow-visible">
    <div class="card-header">
        {ADMIN_POLLS_FORMNAME}
    </div>
    <form class="row g-3 p-4" id="addpoll" action="{ADMIN_POLLS_FORM_URL}" method="post">
        <!-- IF {PHP.cfg.jquery} -->
        <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
        <script type="text/javascript">
            var ansMax = {PHP.cfg.polls.max_options_polls};
        </script>
        <!-- ENDIF -->
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">{PHP.L.poll}:</label>
            <div class="col-sm-10">
                {EDIT_POLL_IDFIELD}{EDIT_POLL_TEXT}
            </div>
        </div>
        <div class="mb-3 row">
            <label class="col-sm-2 col-form-label">{PHP.L.Options}:</label>
            <div class="col-sm-10">
                <!-- BEGIN: OPTIONS -->
                <div class="polloptiondiv input-group mb-3">
                    {EDIT_POLL_OPTION_TEXT}
                    <input class="deloption btn btn-outline-secondary btn" name="deloption" value="x" type="button" style="display:none;"/>
                </div>
                <!-- END: OPTIONS -->
            </div>
        </div>
        <div class="text-end pe-5">
            <input class="btn btn-outline-secondary btn" id="addoption" name="addoption" value="{PHP.L.Add}" type="button" style="display:none;"/></td>
        </div>
        <div>
            {EDIT_POLL_MULTIPLE}
        </div>
        <!-- BEGIN: EDIT -->
        <div>
            {EDIT_POLL_LOCKED}
        </div>
        <div>
            {EDIT_POLL_RESET}
        </div>
        <div>
            {EDIT_POLL_DELETE}
        </div>
        <!-- END: EDIT -->
        <div>
            <button class="btn btn-primary" type="submit">{ADMIN_POLLS_SEND_BUTTON}</button>
        </div>
    </form>
</div>
<!-- END: MAIN -->