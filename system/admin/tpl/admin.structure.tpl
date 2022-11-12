<!-- BEGIN: LIST -->
<div class="iconslist">
    <!-- BEGIN: ADMIN_STRUCTURE_EXT -->
    <div class="icon">
        <!-- IF {ADMIN_STRUCTURE_EXT_ICO} -->
        <img src="{ADMIN_STRUCTURE_EXT_ICO}"/>
        <!-- ELSE -->
        <img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
        <!-- ENDIF -->
        <div class="label">
            <a href="{ADMIN_STRUCTURE_EXT_URL}">{ADMIN_STRUCTURE_EXT_NAME}</a>
        </div>
    </div>
    <!-- END: ADMIN_STRUCTURE_EXT -->
    <!-- BEGIN: ADMIN_STRUCTURE_EMPTY -->
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
        {PHP.L.adm_listisempty}
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>
    <!-- END: ADMIN_STRUCTURE_EMPTY -->
</div>
<!-- END: LIST -->

<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="row">
    <!-- BEGIN: NEWCAT -->
    <div class="col-md-4 col-xxl-3">
        <div class="card">
            <div class="card-body">
                <h3 class="card-title">{PHP.L.Add}</h3>
                <form name="addstructure" id="addstructure" action="{ADMIN_STRUCTURE_URL_FORM_ADD}" method="post"
                      class="ajax"
                      enctype="multipart/form-data">
                    <div class="mb-2">
                        <label class="d-block">
                            <span class="d-block mb-1">{PHP.L.Title} <span class="text-danger">*</span></span>
                            {ADMIN_STRUCTURE_TITLE}
                        </label>
                    </div>
                    <div class="mb-2">
                        <label class="d-block">
                            <span class="d-block mb-1">{PHP.L.Alias} <span class="text-danger">*</span></span>
                            {ADMIN_STRUCTURE_CODE}
                        </label>
                    </div>
                    <div class="mb-2">
                        <label class="d-block">
                            <span class="d-block mb-1">{PHP.L.Path} <span class="text-danger">*</span></span>
                            {ADMIN_STRUCTURE_PARENT}
                        </label>
                    </div>
                    <div class="mb-2">
                        <label class="d-block">
                            <span class="d-block mb-1">{PHP.L.Description}</span>
                            {ADMIN_STRUCTURE_DESC}
                        </label>
                    </div>
                    <div class="mb-2">
                        <label class="d-block">
                            <span class="d-block mb-1">{PHP.L.Icon}</span>
                            {ADMIN_STRUCTURE_ICON}
                        </label>
                    </div>
                    <!-- BEGIN: EXTRAFLD -->
                    <div class="mb-2">
                        <label class="d-block">
                            <span class="d-block mb-1">{ADMIN_STRUCTURE_EXTRAFLD_TITLE}</span>
                            {ADMIN_STRUCTURE_EXTRAFLD}
                        </label>
                    </div>
                    <!-- END: EXTRAFLD -->
                    <div class="mb-2">
                        <label class="d-block">
                            {ADMIN_STRUCTURE_LOCKED} {PHP.L.Locked}
                        </label>
                    </div>
                    <button type="submit" class="btn btn-sm btn-primary">{PHP.L.Add}</button>
                </form>
            </div>
        </div>
    </div>
    <!-- END: NEWCAT -->
    <!-- BEGIN: DEFAULT -->
    <div class="col-md-8 col-xxl-9">
        <div class="card">
            <div class="card-header">
                <div class="btn-group">
                    <button type="button" data-action="expand-all"
                            class="btn btn-sm btn-primary">
                        {__('Expand_all')}
                    </button>
                    <button type="button" data-action="collapse-all"
                            class="btn btn-sm btn-warning">
                        {__('Collapse_all')}
                    </button>
                    <a href="{ADMIN_STRUCTURE_URL_EXTRAFIELDS}"
                       class="btn btn-sm btn-outline-primary">{PHP.L.adm_extrafields}</a>
                    <a href="{ADMIN_PAGE_STRUCTURE_RESYNCALL}" class="ajax btn btn-sm btn-outline-primary special"
                       title="{PHP.L.adm_tpl_resyncalltitle}">{PHP.L.Resync}</a>
                    <!-- IF {PHP.cot_plugins_active.i18n} -->
                    <a href="{PHP|cot_url('plug', 'e=i18n&m=structure')}"
                       class="btn btn-sm btn-outline-primary">{PHP.L.i18n_translate}</a>
                    <!-- ENDIF -->
                </div>
            </div>
            <div class="card-body">
                <div class="dd" id="nestable">
                    <ol class='dd-list'></ol>
                </div>
                <link rel="stylesheet" href="system/admin/tpl/assets/css/nestable.css">
                <script src="/js/jquery/jquery-3.6.0.min.js"></script>
                <script src="system/admin/tpl/assets/js/jquery.nestable.js"></script>
                <script>
                  function getNewSort(item, order, parent) {
                    var upd = [];
                    upd.push({
                      id: item.id,
                      rpath: parent,
                    })
                    if (item.children) {
                      var obj = item.children;
                      for (var i = 0; i < obj.length; i++) {
                        var el = obj[i];
                        upd.push(...getNewSort(el, (1000 + i + 1).toString().substr(1), parent + '.' + (1000 + i + 1).toString().substr(1)))
                      }
                    }

                    return upd;
                  }

                  var updateOutput = function (e) {
                    var list = e.length ? e : $(e.target);
                    if (window.JSON) {
                      var upd = [];
                      var obj = list.nestable('serialize');

                      for (var i = 0; i < obj.length; i++) {
                        var el = obj[i];
                        upd.push(...getNewSort(el, (1000 + i + 1).toString().substr(1), (1000 + i + 1).toString().substr(1)))
                      }

                      fetch('{PHP.n|cot_url('admin', "m=structure&n=$this&a=sort", "", true)}&{PHP|cot_xg()}',
                        {
                          method: "POST",
                          body: 'sort=' + JSON.stringify(upd),
                          headers: {'Content-type': 'application/x-www-form-urlencoded'}
                        })
                        .then(function (res) {
                          return res.json();
                        })
                    }
                  };

                  function buildItem(item) {

                    var html = "<li class='dd-item dd3-item' data-id='" + item.id + "'>";
                    html += "<div class='dd-handle dd3-handle'></div> " +
                      "<div class='dd3-content'>" + item.title + "<div class='dd3-buttons'>" +
                      "<div class='btn-group'>" +
                      "<a href='" + item.options_href + "' title='{PHP.L.Edit}' data-bs-toggle='tooltip' data-bs-placement='top' class='ajax btn btn-sm btn-primary'><i class='bi bi-pencil'></i></a>";
                    if (item.rights_href) {
                      html += "<a href='" + item.rights_href + "' title='{PHP.L.Rights}' data-bs-toggle='tooltip' ata-bs-placement='top' class='ajax btn btn-sm btn-warning text-white'><i class='bi bi-server'></i></a>";
                    }
                    html += "<a href='" + item.delete_href + "' title='{PHP.L.Delete}' data-bs-toggle='tooltip' data-bs-placement='top' class='ajax btn btn-sm btn-danger'><i class='bi bi-trash'></i></a>" +
                      "<a href='" + item.href + "' title='{PHP.L.View}' data-bs-toggle='tooltip' data-bs-placement='top' target='_blank' class='btn btn-sm btn-secondary'><i class='bi bi-forward'></i></a>" +
                      "</div>" +
                      "</div></div>";

                    if (item.children) {
                      html += "<ol class='dd-list'>";
                      $.each(item.children, function (index, sub) {
                        html += buildItem(sub);
                      });
                      html += "</ol>";

                    }
                    html += "</li>";
                    return html;
                  }

                  setTimeout(function () {
                    var output = '';
                    var data = {ADMIN_STRUCTURE_TREE};
                    $.each(data, function (index, item) {
                      output += buildItem(item);
                    });
                    $('#nestable .dd-list').html(output);
                    $("#nestable").nestable({maxDepth: {ADMIN_STRUCTURE_MAX_DEPTH} }).on('change', updateOutput);
                  }, 0);

                  document.querySelector('#nestable-menu').on('click', function (e) {
                    var target = document.querySelector(e.target),
                      action = target.data('action');
                    if (action === 'expand-all') {
                      $('.dd').nestable('expandAll');
                    }
                    if (action === 'collapse-all') {
                      $('.dd').nestable('collapseAll');
                    }
                  });
                </script>
            </div>
        </div>
    </div>
    <!-- END: DEFAULT -->
</div>

<!-- BEGIN: OPTIONS -->
<div class="card">
    <div class="card-body p-3">
        <form name="savestructure" id="savestructure" action="{ADMIN_STRUCTURE_UPDATE_FORM_URL}" method="post"
              enctype="multipart/form-data">
            {ADMIN_STRUCTURE_PATH}
            <table class="table align-middle">
                <tr>
                    <td>{PHP.L.Title}:</td>
                    <td>{ADMIN_STRUCTURE_TITLE}</td>
                </tr>
                <tr>
                    <td>{PHP.L.Alias}:</td>
                    <td>{ADMIN_STRUCTURE_CODE}</td>
                </tr>
                <tr>
                    <td>{PHP.L.Description}:</td>
                    <td>{ADMIN_STRUCTURE_DESC}</td>
                </tr>
                <tr>
                    <td>{PHP.L.Icon}:</td>
                    <td>{ADMIN_STRUCTURE_ICON}</td>
                </tr>
                <tr>
                    <td>{PHP.L.Locked}:</td>
                    <td>{ADMIN_STRUCTURE_LOCKED}</td>
                </tr>
                <tr>
                    <td>{PHP.L.adm_tpl_mode}:</td>
                    <td>
                        {ADMIN_STRUCTURE_TPLMODE} {ADMIN_STRUCTURE_SELECT}
                        {PHP.L.adm_tpl_quickcat}: {ADMIN_STRUCTURE_TPLQUICK}
                    </td>
                </tr>
                <!-- BEGIN: EXTRAFLD -->
                <tr>
                    <td>{ADMIN_STRUCTURE_EXTRAFLD_TITLE}:</td>
                    <td class="{ADMIN_STRUCTURE_ODDEVEN}">{ADMIN_STRUCTURE_EXTRAFLD}</td>
                </tr>
                <!-- END: EXTRAFLD -->
            </table>
            <!-- BEGIN: CONFIG -->
            <h5 class="card-title">{PHP.L.Configuration}</h5>{CONFIG_HIDDEN}
            {ADMIN_CONFIG_EDIT_CUSTOM}

            <table class="table align-middle">
                <tr>
                    <td class="coltop width35">{PHP.L.Parameter}</td>
                    <td class="coltop width60">{PHP.L.Value}</td>
                    <td class="coltop width5">{PHP.L.Reset}</td>
                </tr>
                <!-- BEGIN: ADMIN_CONFIG_ROW -->
                <!-- BEGIN: ADMIN_CONFIG_FIELDSET_BEGIN -->
                <tr>
                    <td class="group_begin" colspan="3">
                        <h4>{ADMIN_CONFIG_FIELDSET_TITLE}</h4>
                    </td>
                </tr>
                <!-- END: ADMIN_CONFIG_FIELDSET_BEGIN -->
                <!-- BEGIN: ADMIN_CONFIG_ROW_OPTION -->
                <tr>
                    <td>{ADMIN_CONFIG_ROW_CONFIG_TITLE}:</td>
                    <td>
                        {ADMIN_CONFIG_ROW_CONFIG}
                        <div class="adminconfigmore">{ADMIN_CONFIG_ROW_CONFIG_MORE}</div>
                    </td>
                    <td class="centerall">
                        <a href="{ADMIN_CONFIG_ROW_CONFIG_MORE_URL}" class="ajax btn btn-outline-secondary">
                            {PHP.L.Reset}
                        </a>
                    </td>
                </tr>
                <!-- END: ADMIN_CONFIG_ROW_OPTION -->
                <!-- END: ADMIN_CONFIG_ROW -->

            </table>

            <!-- END: CONFIG -->
            <button type="submit" class="btn btn-primary">{PHP.L.Update}</button>
        </form>
    </div>
</div>
<!-- END: OPTIONS -->

<!-- END: MAIN -->

