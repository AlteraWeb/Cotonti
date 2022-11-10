<!-- BEGIN: MAIN -->
    <!-- BEGIN: UPDATE -->
    <div class="alert alert-warning bg-warning border-0 alert-dismissible fade show">
        <h3>{PHP.L.adminqv_update_notice}:</h3>
        <p>{ADMIN_HOME_UPDATE_REVISION} {ADMIN_HOME_UPDATE_MESSAGE}</p>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <!-- END: UPDATE -->
    {FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}

    <section class="section dashboard">
        <div class="row">
            <!-- BEGIN: TOPPANEL -->
            {ADMIN_HOME_TOPPANEL}
            <!-- END: TOPPANEL -->
            <div class="col-xxl-4 col-md-6">
                <div class="card info-card revenue-card overflow-visible">
                    <div class="filter">
                        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                            <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=main')}" class="dropdown-item">{PHP.L.home_ql_b1_1}</a></li>
                            <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=title')}" class="dropdown-item">{PHP.L.home_ql_b1_2}</a></li>
                            <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=theme')}" class="dropdown-item">{PHP.L.home_ql_b1_3}</a></li>
                            <li><a href="{PHP|cot_url('admin','m=config&n=edit&o=core&p=locale')}" class="dropdown-item">{PHP.L.Locale}</a></li>
                        </ul>
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">CMS</h5>
                        <div class="d-flex align-items-center">
                            <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                                <i class="bi bi-cpu"></i>
                            </div>
                            <div class="ps-3">
                                <div>
                                    <span class="text-muted small pt-2 ps-1">{__('Version')}</span> <span class="text-primary small pt-1 fw-bold">{ADMIN_HOME_VERSION}</span>
                                </div>
                                <div>
                                    <span class="text-muted small pt-2 ps-1">PHP</span> <span class="text-info small pt-1 fw-bold">{PHP|phpversion()}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-8">
                <!-- BEGIN: MAINPANEL -->
                {ADMIN_HOME_MAINPANEL}
                <!-- END: MAINPANEL -->
            </div>
            <div class="col-lg-4">
                <!-- BEGIN: SIDEPANEL -->
                    {ADMIN_HOME_SIDEPANEL}
                <!-- END: SIDEPANEL -->
            </div>
        </div>
    </section>

<!-- END: MAIN -->

