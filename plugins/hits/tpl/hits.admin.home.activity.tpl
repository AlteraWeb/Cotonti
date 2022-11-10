<!-- BEGIN: MAIN -->
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">{ACTIVITY_STAT_HEADER}</h5>
            <table class="table">
                <tr>
                    <td class="width80"><a href="{ADMIN_HOME_NEWUSERS_URL}">{PHP.L.home_newusers}</a></td>
                    <td class="textcenter width20">{ADMIN_HOME_NEWUSERS}</td>
                </tr>
                <tr>
                    <td><a href="{ADMIN_HOME_NEWPAGES_URL}">{PHP.L.home_newpages}</a></td>
                    <td class="textcenter">{ADMIN_HOME_NEWPAGES}</td>
                </tr>
                <!-- IF {PHP.cot_modules.forums} -->
                <tr>
                    <td><a href="{ADMIN_HOME_NEWTOPICS_URL}">{PHP.L.home_newtopics}</a></td>
                    <td class="textcenter">{ADMIN_HOME_NEWTOPICS}</td>
                </tr>
                <tr>
                    <td><a href="{ADMIN_HOME_NEWPOSTS_URL}">{PHP.L.home_newposts}</a></td>
                    <td class="textcenter">{ADMIN_HOME_NEWPOSTS}</td>
                </tr>
                <!-- ENDIF -->
                <!-- IF {PHP.cot_modules.pm} -->
                <tr>
                    <td>{PHP.L.home_newpms}</td>
                    <td class="textcenter">{ADMIN_HOME_NEWPMS}</td>
                </tr>
                <!-- ENDIF -->
            </table>
        </div>
    </div>
<!-- END: MAIN -->
