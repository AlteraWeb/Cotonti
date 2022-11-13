<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
	<div class="card-body">
		<div class="card-title">{PHP.L.viewdeleteentries}:</div>
		<table class="table table-striped">
			<thead>
				<tr>
					<th width="1%">#</th>
					<th>{PHP.L.adm_area}</th>
					<th>{PHP.L.Code}</th>
					<th>{PHP.L.Author}</th>
					<th>{PHP.L.Date}</th>
					<th>{PHP.L.comments_comment}</th>
					<th width="200px">{PHP.L.Action}</th>
				</tr>
			</thead>
			<tbody>
				<!-- BEGIN: ADMIN_COMMENTS_ROW -->
				<tr>
					<td>{ADMIN_COMMENTS_ITEM_ID}</td>
					<td>{ADMIN_COMMENTS_AREA}</td>
					<td>{ADMIN_COMMENTS_CODE}</td>
					<td>{ADMIN_COMMENTS_AUTHOR}</td>
					<td>{ADMIN_COMMENTS_DATE}</td>
					<td>{ADMIN_COMMENTS_TEXT}</td>
					<td>
						<a title="{PHP.L.Open}" href="{ADMIN_COMMENTS_URL}" class="btn btn-primary btn-sm">{PHP.L.Open}</a>
						<a title="{PHP.L.Delete}" href="{ADMIN_COMMENTS_ITEM_DEL_URL}" class="ajax btn btn-danger btn-sm">{PHP.L.Delete}</a>
					</td>
				</tr>
				<!-- END: ADMIN_COMMENTS_ROW -->
			</tbody>
		</table>
		<div class="mt-5 d-flex align-center justify-content-between">
			<div>
				<ul class="pagination mb-1">{ADMIN_COMMENTS_PAGINATION_PREV}{ADMIN_COMMENTS_PAGNAV}{ADMIN_COMMENTS_PAGINATION_NEXT}</ul>
			</div>
			<div class="small text-end">
				{__('Total')}: {ADMIN_COMMENTS_TOTALITEMS},
				{__('Onpage')}: {ADMIN_COMMENTS_COUNTER_ROW}
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
