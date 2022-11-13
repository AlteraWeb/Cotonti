<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<!-- IF {ADMIN_RATINGS_TOTALVOTES} -->
<div class="card">
	<div class="card-body">
		<table class="table">
			<thead>
				<tr>
					<th>{__('adm_area')}</th>
					<th>{__('Code')}</th>
					<th>{__('Date')} (GMT)</th>
					<th>{__('Votes')}</th>
					<th>{__('Rating')}</th>
					<th>{__('Action')}</th>
				</tr>
			</thead>
			<tbody>
				<!-- BEGIN: RATINGS_ROW -->
				<tr>
					<td>{ADMIN_RATINGS_ROW_RATING_AREA}</td>
					<td>{ADMIN_RATINGS_ROW_RATING_CODE}</td>
					<td>{ADMIN_RATINGS_ROW_CREATIONDATE}</td>
					<td>{ADMIN_RATINGS_ROW_VOTES}</td>
					<td>{ADMIN_RATINGS_ROW_RATING_AVERAGE}</td>
					<td>
						<a title="{PHP.L.Delete}" href="{ADMIN_RATINGS_ROW_URL_DEL}" class="button">{PHP.L.Delete}</a>
						<a title="{PHP.L.Open}" href="{ADMIN_RATINGS_ROW_RAT_URL}" class="button special">{PHP.L.Open}</a>
					</td>
				</tr>
				<!-- END: RATINGS_ROW -->
			</tbody>
		</table>
	</div>
</div>
<div class="mt-5 d-flex align-center justify-content-between">
	<div>
		<ul class="pagination mb-1">{ADMIN_RATINGS_PAGINATION_PREV}{ADMIN_RATINGS_PAGNAV}{ADMIN_RATINGS_PAGINATION_NEXT}</ul>
	</div>
	<div class="small text-end">
		{__('adm_ratings_totalitems')}: {ADMIN_RATINGS_TOTALITEMS},
		{__('Onpage')}: {ADMIN_RATINGS_ON_PAGE}
		{__('adm_ratings_totalvotes')}: {ADMIN_RATINGS_TOTALVOTES},
	</div>
</div>
<!-- ELSE -->
<div class="card p-3">
	<div class="container-fluid py-5">
		<h1 class="display-5 fw-bold">{__('None')}</h1>
	</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
