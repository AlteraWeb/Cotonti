<!-- BEGIN: MAIN -->
<!-- IF {PHP.is_adminwarnings} -->
<div class="alert alert-danger alert-dismissible fade show">
    <h4 class="alert-heading">{PHP.L.Message}</h4>
    <p>{PHP.L.adm_nogd}</p>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<!-- ENDIF -->
<div class="block button-toolbar mb-3">
    <a class="btn btn-sm btn-primary" title="{PHP.L.Configuration}" href="{ADMIN_PFS_URL_CONFIG}">{PHP.L.Configuration}</a>
    <a class="btn btn-sm btn-primary" href="{ADMIN_PFS_URL_ALLPFS}">{PHP.L.adm_allpfs}</a>
    <a class="btn btn-sm btn-primary" href="{ADMIN_PFS_URL_SFS}">{PHP.L.SFS}</a>
</div>
<div class="card">
    <div class="card-header">
        {PHP.L.adm_gd}:
    </div>
    <ul class="list-group list-group-flush">
        <!-- BEGIN: PFS_ROW -->
        <li class="list-group-item">{ADMIN_PFS_DATAS_NAME}: <span class="float-end">{ADMIN_PFS_DATAS_ENABLE_OR_DISABLE}</span></li>
        <!-- END: PFS_ROW -->
    </ul>
</div>
<!-- END: MAIN -->