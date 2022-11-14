<!-- BEGIN: MAIN -->
<div class="mb-md-3">
    <a class="btn btn-sm btn-primary" title="{PHP.L.Configuration}" href="{ADMIN_FORUMS_URL_CONFIG}">{PHP.L.Configuration}</a>
    <a class="btn btn-sm btn-primary" href="{ADMIN_FORUMS_URL_STRUCTURE}">{PHP.L.Categories}</a>
</div>
<section class="section dashboard">
    <div class="row">
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card sales-card overflow-visible">
                <div class="card-body">
                    <h5 class="card-title">{PHP.L.forums_topics}</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi-info-square"></i>
                        </div>
                        <div class="ps-3">
                            <h3>{ADMIN_FORUMS_TOTALTOPICS}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card customers-card overflow-visible">
                <div class="card-body">
                    <h5 class="card-title">{PHP.L.forums_posts}</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi-chat-left-text"></i>
                        </div>
                        <div class="ps-3">
                            <h3>{ADMIN_FORUMS_TOTALPOSTS}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xxl-4 col-md-4">
            <div class="card info-card revenue-card overflow-visible">
                <div class="card-body">
                    <h5 class="card-title">{PHP.L.Views}</h5>
                    <div class="d-flex align-items-center">
                        <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                            <i class="bi-view-list"></i>
                        </div>
                        <div class="ps-3">
                            <h3>{ADMIN_FORUMS_TOTALVIEWS}</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<div class="card card-small card-default">
    <div class="card-header">
        {PHP.L.home_newtopics}
    </div>
    <div class="table-responsive">
        <table class="table table-hover small">
            <thead>
                <th class="ps-3">{PHP.L.Title}</th>
                <th class="text-end">{PHP.L.home_newposts}</th>
            </thead>
            <tbody>
                <!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
                <tr>
                    <!--
                    <td scope="row">
                        {ADMIN_FORUMS_ROW_II}.
                    </td>
                    -->
                    <td class="uk-text-truncate ps-3">
                        <div class="no-margins">{ADMIN_FORUMS_ROW_FORUMS}</div>
                        <a href="{ADMIN_FORUMS_ROW_URL}">{ADMIN_FORUMS_ROW_TITLE}</a>
                    </td>
                    <td class="text-end">
                        <span class="badge rounded-pill <!-- IF {ADMIN_FORUMS_ROW_POSTCOUNT} -->bg-primary"<!-- ELSE -->bg-dark-light<!-- ENDIF -->>{ADMIN_FORUMS_ROW_POSTCOUNT}</span>
                    </td>
                </tr>
                <!-- END: ADMIN_FORUMS_ROW_USER -->
            </tbody>
        </table>
    </div>
</div>
<!-- END: MAIN -->
