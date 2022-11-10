<!-- BEGIN: MAIN -->
<div id="ajaxBlock">
    <!-- BEGIN: BODY -->
    <main id="main" class="main">
        <div class="pagetitle">
            <div class="row">
                <div class="col-md-11">
                    <!-- IF {ADMIN_SUBTITLE} -->
                    <h1>{ADMIN_SUBTITLE}</h1>
                    <!-- ELSE -->
                    <h1>{PHP.L.Adminpanel}</h1>
                    <!-- ENDIF -->

                    <!-- IF {PHP.m} -->
                    <nav>
                        {ADMIN_TITLE}
                    </nav>
                    <!-- ENDIF -->
                </div>
                <div class="col-md-1 text-end">
                    <!-- IF {ADMIN_HELP} -->
                    <button class="btn btn-secondary" type="button" data-bs-toggle="offcanvas" data-bs-target="#help" aria-controls="offcanvasRight">

                        <i class="bi bi-question-circle"></i>
                    </button>
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="help" aria-labelledby="helpLabel">
                        <div class="offcanvas-header">
                            <h5 id="helpLabel">{PHP.L.Help}</h5>
                            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body text-start">
                            {ADMIN_HELP}
                        </div>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
        </div><!-- End Page Title -->
        {ADMIN_MAIN}
    </main>
    <!-- END: BODY -->
</div>
<!-- END: MAIN -->