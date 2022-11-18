<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
    <div class="card-body">
        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th>{PHP.L.Date}</th>
                    <th>{PHP.L.User}</th>
                    <th>{PHP.L.Message}</th>
                    <th class="text-end">{PHP.L.Action}</th>
                </tr>
                </thead>
                <tbody>
                <!-- BEGIN: DATA -->
                <tr>
                    <td class=" {CONTACT_ODDEVEN}">{CONTACT_DATE}
                        <!-- IF {CONTACT_VAL} == val -->
                        <br/>
                        <span class="badge bg-success">{PHP.L.contact_shortnew}</span>
                        <!-- ENDIF -->
                    </td>
                    <td class="{CONTACT_ODDEVEN}">{CONTACT_USER}<br/>{CONTACT_EMAIL}</td>
                    <td class="{CONTACT_ODDEVEN}">{CONTACT_TEXTSHORT}</td>
                    <td class="text-end {CONTACT_ODDEVEN}">
                        <div class="btn-group">
                            <a class="btn btn-sm btn-primary" data-bs-toggle="tooltip" data-bs-placement="top"
                               data-bs-title="{PHP.L.View}" href="{CONTACT_VIEWLINK}">
                                <i class="bi-reply"></i>
                            </a>
                            <!-- IF {CONTACT_VAL} == val -->
                            <a class="btn btn-sm btn-success" data-bs-toggle="tooltip" data-bs-placement="top"
                               data-bs-title="{PHP.L.contact_markread}" href="{CONTACT_READLINK}">
                                <i class="bi-file-earmark-check"></i>
                            </a>
                            <!-- ELSE -->
                            <a class="btn btn-sm btn-warning" data-bs-toggle="tooltip" data-bs-placement="top"
                               data-bs-title="{PHP.L.contact_markunread}" href="{CONTACT_UNREADLINK}">
                                <i class="bi-file-earmark-excel"></i>
                            </a>
                            <!-- ENDIF -->
                            <a class="btn btn-sm btn-danger" data-bs-toggle="tooltip" data-bs-placement="top"
                               data-bs-title="{PHP.L.Delete}" href="{CONTACT_DELLINK}">
                                <i class="bi-x-circle"></i>
                            </a>
                        </div>
                    </td>
                </tr>
                <!-- END: DATA -->
                </tbody>
            </table>
        </div>
    </div>
</div>
<ul class="pagination">{CONTACT_PREV}{CONTACT_PAGINATION}{CONTACT_NEXT}</ul>

<!-- BEGIN: VIEW -->
<div class="card">
    <div class="card-header">
        {PHP.L.contact_view} #{CONTACT_ID}
        <!-- IF {CONTACT_SUBJECT} -->
        {CONTACT_SUBJECT}
        <!-- ELSE -->
        {PHP.L.contact_nosubject}
        <!-- ENDIF -->
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">
                <div class="table-responsive">
                    <table class="table table-borderless">
                        <tr>
                            <td><b>{PHP.L.Username}:</b></td>
                            <td>{CONTACT_USER}</td>
                        </tr>
                        <tr>
                            <td><b>{PHP.L.Date}:</b></td>
                            <td>{CONTACT_DATE}</td>
                        </tr>
                        <tr>
                            <td><b>{PHP.L.Email}:</b></td>
                            <td>{CONTACT_EMAIL}</td>
                        </tr>
                        <tr>
                            <td><b>{PHP.L.Subject}:</b></td>
                            <td><!-- IF {CONTACT_SUBJECT} -->
                                {CONTACT_SUBJECT}
                                <!-- ELSE -->
                                {PHP.L.contact_nosubject}
                                <!-- ENDIF -->
                            </td>
                        </tr>
                        <tr>
                            <td><b>{PHP.L.Message}:</b></td>
                            <td>
                                {CONTACT_TEXT}
                            </td>
                        </tr>

                        <!-- BEGIN: EXTRAFLD -->
                        <tr>
                            <td><b>{CONTACT_EXTRAFLD_TITLE}</b></td>
                            <td>{CONTACT_EXTRAFLD}</td>
                        </tr>
                        <!-- END: EXTRAFLD -->

                        <!-- IF {CONTACT_REPLY} -->
                        <tr>
                            <td><b>{PHP.L.contact_sent}:</b></td>
                            <td>{CONTACT_REPLY}</td>
                        </tr>
                        <!-- ENDIF -->
                        <tr>
                            <td><b>{PHP.L.Reply}:</b></td>
                            <td>{CONTACT_FORM_TEXT}</td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <button class="btn btn-primary" type="submit">{PHP.L.Submit}</button>
                            </td>
                        </tr>
                    </table>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: VIEW -->

<!-- END: MAIN -->