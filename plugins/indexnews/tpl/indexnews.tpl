<!-- BEGIN: MAIN -->
<h3 class="pb-4 mb-4 fst-italic border-bottom">{__('News')}</h3>

<!-- BEGIN: PAGE_ROW -->
<article class="card mb-3">
    <div class="card-body">
        <h3 class="blog-post-title mb-1">{PAGE_ROW_SHORTTITLE}</h3>
        <p class="blog-post-meta">
            <i class="fa fa-map-marker me-1"></i> {PAGE_ROW_CATPATH}
            <i class="fa fa-calendar ms-3 me-1"></i> {PAGE_ROW_DATE}
            <i class="fa fa-comments-o ms-3 me-1"></i> <a href="{PAGE_ROW_URL}#comments" rel="nofollow">{PAGE_ROW_COMMENTS_COUNT}</a>
        </p>
        {PAGE_ROW_AUTHOR}
        {PAGE_ROW_TEXT_CUT}
        <!-- BEGIN: PAGE_TAGS -->
        <p class="column">
            <strong>{PHP.L.Tags}:</strong>
            <!-- BEGIN: PAGE_TAGS_ROW -->
                <!-- IF {PAGE_TAGS_ROW_TAG_COUNT} > 0 -->, <!-- ENDIF -->
                <a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
            <!-- END: PAGE_TAGS_ROW -->
        </p>
        <!-- END: PAGE_TAGS -->
        <div class="mt-3">
            <a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}" class="btn btn-primary">{__('More')}</a>
        </div>
    </div>
</article>
<!-- END: PAGE_ROW -->

<!-- END: MAIN -->

<!-- BEGIN: PAGE_ROW -->
<div class="combox">{PAGE_ROW_COMMENTS_COUNT}</div>
<h3><!-- IF {PHP.usr.isadmin} -->[ {PAGE_ROW_ADMIN_EDIT} ] &nbsp; <!-- ENDIF --><a href="{PAGE_ROW_URL}"
                                                                                   title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}</a>
</h3>
<!-- IF {PAGE_ROW_DESC} --><p class="small">{PAGE_ROW_DESC}</p><!-- ENDIF -->

<div class="clear desc">

    <p class="column floatright">
        <strong>{PHP.L.Filedunder}:</strong> {PAGE_ROW_CATPATH}
    </p>
</div>

<div class="textbox">
    {PAGE_ROW_TEXT_CUT}
    <!-- IF {PAGE_ROW_TEXT_IS_CUT} -->{PAGE_ROW_MORE}<!-- ENDIF -->
</div>

<hr class="clear divider"/>
<!-- END: PAGE_ROW -->

<p class="paging">{PAGE_PAGEPREV}{PAGE_PAGENAV}{PAGE_PAGENEXT}</p>
