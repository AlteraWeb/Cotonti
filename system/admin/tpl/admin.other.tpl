<!-- BEGIN: MAIN -->

<div class="accordion" id="accordionExample">
    <div class="accordion-item">
        <h2 class="accordion-header" id="headingCore">
            <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseCore" aria-expanded="false" aria-controls="collapseCore">
                {PHP.L.Core}
            </button>
        </h2>
        <div id="collapseCore" class="accordion-collapse collapse show" aria-labelledby="headingCore" data-bs-parent="#accordionExample" style="">
            <div class="accordion-body p-0">
                <table class="table align-middle mb-0">
                    <tr>
                        <td class="coltop width10"></td>
                        <td class="coltop width90">{PHP.L.Part} {PHP.L.adm_clicktoedit}</td>
                    </tr>
                    <tr>
                        <td class="text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
                        <td>
                            <div><a href="{ADMIN_OTHER_URL_CACHE}">{PHP.L.adm_internalcache}</a></div>
                            <div class="small text-muted">{PHP.L.adm_internalcache_desc}</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
                        <td>
                            <div><a href="{ADMIN_OTHER_URL_DISKCACHE}">{PHP.L.adm_diskcache}</a></div>
                            <div class="small text-muted">{PHP.L.adm_diskcache_desc}</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
                        <td>
                            <div><a href="{ADMIN_OTHER_URL_EXFLDS}">{PHP.L.adm_extrafields}</a></div>
                            <div class="small text-muted">{PHP.L.adm_extrafields_desc}</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center"><img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/></td>
                        <td>
                            <div><a href="{ADMIN_OTHER_URL_LOG}">{PHP.L.adm_log}</a></div>
                            <div class="small text-muted">{PHP.L.adm_log_desc}</div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center"><img src="{PHP.cfg.system_dir}/admin/img/cfg_info.png"/></td>
                        <td>
                            <div><a href="{ADMIN_OTHER_URL_INFOS}">{PHP.L.adm_infos}</a></div>
                            <div class="small text-muted">{PHP.L.adm_infos_desc}</div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <!-- BEGIN: SECTION -->
    <div class="accordion-item">
        <h2 class="accordion-header" id="heading{ADMIN_OTHER_SECTION|cot_translit_encode}">
            <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapse{ADMIN_OTHER_SECTION|cot_translit_encode}" aria-expanded="false" aria-controls="collapse{ADMIN_OTHER_SECTION|cot_translit_encode}">
                {ADMIN_OTHER_SECTION}
            </button>
        </h2>
        <div id="collapse{ADMIN_OTHER_SECTION|cot_translit_encode}" class="accordion-collapse collapse" aria-labelledby="heading{ADMIN_OTHER_SECTION|cot_translit_encode}" data-bs-parent="#accordionExample" style="">
            <div class="accordion-body p-0">
                <table class="table align-middle mb-0">
                    <!-- BEGIN: ROW -->
                    <tr>
                        <td class="text-center width10">
                            <!-- IF {ADMIN_OTHER_EXT_ICO} -->
                            <img src="{ADMIN_OTHER_EXT_ICO}"/>
                            <!-- ELSE -->
                            <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
                            <!-- ENDIF -->
                        </td>
                        <td class="width90">
                            <div><a href="{ADMIN_OTHER_EXT_URL}">{ADMIN_OTHER_EXT_NAME}</a></div>
                            <div class="small text-muted">{ADMIN_OTHER_EXT_DESC}</div>
                        </td>
                    </tr>
                    <!-- END: ROW -->
                    <!-- BEGIN: EMPTY -->
                    <tr>
                        <td colspan="2">{PHP.L.adm_listisempty}</td>
                    </tr>
                    <!-- END: EMPTY -->
                </table>
            </div>
        </div>
    </div>
    <!-- END: SECTION -->
</div>

<!-- END: MAIN -->