<!-- BEGIN: MAIN -->
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">{ACTIVITY_STAT_HEADER}</h5>
            <div class="list-group">
                <a href="{ADMIN_HOME_NEWUSERS_URL}" class="list-group-item d-flex justify-content-between align-items-start">
                    <div class="me-auto">{__('home_newusers')}</div>
                    <span class="badge rounded-pill <!-- IF {ADMIN_HOME_NEWUSERS} -->bg-primary<!-- ELSE -->bg-dark-light<!-- ENDIF -->">{ADMIN_HOME_NEWUSERS}</span>
                </a>
                <!-- IF {PHP.cot_modules.page} -->
                <a href="{ADMIN_HOME_NEWPAGES_URL}" class="list-group-item d-flex justify-content-between align-items-start">
                    <div class="me-auto">{__('home_newpages')}</div>
                    <span class="badge rounded-pill <!-- IF {ADMIN_HOME_NEWPAGES} -->bg-primary<!-- ELSE -->bg-dark-light<!-- ENDIF -->">{ADMIN_HOME_NEWPAGES}</span>
                </a>
                <!-- ENDIF -->

                <!-- IF {PHP.cot_modules.forums} -->
                    <a href="{ADMIN_HOME_NEWTOPICS_URL}" class="list-group-item d-flex justify-content-between align-items-start">
                        {__('home_newtopics')}
                        <span class="badge rounded-pill <!-- IF {ADMIN_HOME_NEWTOPICS} -->bg-primary<!-- ELSE -->bg-dark-light<!-- ENDIF -->">{ADMIN_HOME_NEWTOPICS}</span>
                    </a>
                    <a href="{ADMIN_HOME_NEWPOSTS_URL}" class="list-group-item d-flex justify-content-between align-items-start">
                        {__('home_newposts')}
                        <span class="badge rounded-pill <!-- IF {ADMIN_HOME_NEWPOSTS} -->bg-primary<!-- ELSE -->bg-dark-light<!-- ENDIF -->">{ADMIN_HOME_NEWPOSTS}</span>
                    </a>
                <!-- ENDIF -->

                <!-- IF {PHP.cot_modules.pm} -->
                <a href="{ADMIN_HOME_NEWPMS_URL}" class="list-group-item d-flex justify-content-between align-items-start">
                    {__('home_newpms')}
                    <span class="badge rounded-pill <!-- IF {ADMIN_HOME_NEWPMS} -->bg-primary<!-- ELSE -->bg-dark-light<!-- ENDIF -->">{ADMIN_HOME_NEWPMS}</span>
                </a>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
<!-- END: MAIN -->
