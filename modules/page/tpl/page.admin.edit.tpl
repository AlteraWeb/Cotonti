<!-- BEGIN: MAIN -->

<form action="{PAGEEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data">
    <div class="row">
        <div class="col-8">
            <div class="card">
                <div class="card-body p-3">
                    <div class="mb-3">
                        <div>{PHP.L.Title}</div>
                        <div>{PAGEEDIT_FORM_TITLE}</div>
                    </div>
                    <div class="mb-3">
                        <div>{PHP.L.Description}</div>
                        <div>{PAGEEDIT_FORM_DESC}</div>
                    </div>
                    <div class="mb-3">
                        <div>{PHP.L.Text}</div>
                        <div>{PAGEEDIT_FORM_TEXT}</div>
                    </div>
                    <!-- BEGIN: TAGS -->
                    <div class="mb-3">
                        <div>{PAGEEDIT_TOP_TAGS} <small>({PAGEEDIT_TOP_TAGS_HINT})</small>:</div>
                        <div>{PAGEEDIT_FORM_TAGS} </div>
                    </div>
                    <!-- END: TAGS -->
                    <!-- IF {PHP.cot_plugins_active.attach} -->
                    <div class="mb-3">
                        <div>{PHP.L.Pictures}</div>
                        <div>
                            {PAGEEDIT_FORM_ID|cot_attach_form_admin('page', "images", $this)}
                        </div>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
        <div class="col-4">
            <div class="card">
                <div class="card-body p-3">
                    <div class="mb-3">
                        <div>{PHP.L.Category}</div>
                        <div>{PAGEEDIT_FORM_CAT}</div>
                    </div>
                    <div class="mb-3">
                        <div>{PHP.L.Alias}</div>
                        <div>{PAGEEDIT_FORM_ALIAS}</div>
                    </div>
                </div>
            </div>
            <div class="card mt-3">
                <div class="card-body p-3">
                    <div class="mb-3">
                        <div>Meta title</div>
                        <div>{PAGEEDIT_FORM_METATITLE}</div>
                    </div>
                    <div class="mb-3">
                        <div>Meta keywords</div>
                        <div>{PAGEEDIT_FORM_KEYWORDS}</div>
                    </div>
                    <div class="mb-3">
                        <div>Meta descriptions</div>
                        <div>{PAGEEDIT_FORM_METADESC}</div>
                    </div>
                </div>
            </div>
            <div class="card mt-3">
                <div class="card-body p-3">
                    <!-- IF {PAGEEDIT_FORM_DELETE} -->
                    <div class="mb-3">
                        <div>{PHP.L.Delete}</div>
                        <div>{PAGEEDIT_FORM_DELETE}</div>
                    </div>
                    <!-- ENDIF -->
                    <div class="mb-3">
                        <div>{PHP.L.Action}</div>
                        <div>{PAGEEDIT_FORM_STATE_SELECT}</div>
                    </div>
                    <div class="mb-3 uk-text-center">
                        <button type="submit"  class="btn btn-sm btn-primary">{PHP.L.Submit}</button>
                        <!-- IF {PAGEEDIT_FORM_ID} -->
                        <a href="{CALL|cot_url('page','c=$0%&id=$1%&alias=$2%')|PHP.pag.page_cat,PHP.pag.page_id,PHP.pag.page_alias|htmlspecialchars}" target="_blank" class="btn btn-sm btn-outline-secondary">{PHP.L.View}</a>
                        <!-- ENDIF -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>

<!-- END: MAIN -->
