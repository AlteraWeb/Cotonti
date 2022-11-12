<!-- BEGIN: MAIN -->
<div class="mb-3">
	<a href="{PHP|cot_url('admin', "m=page&p=add")}" class="btn btn-sm btn-primary">{PHP.L.Add}</a>
</div>
{FILE "system/admin/tpl/warnings.tpl"}
<div class="card card-small card-default">
	<div class="card-header">
		<form action="{ADMIN_PAGE_FORM_URL}" method="get" class="row align-items-end gx-1">
			<div class="col-sm">
				<label class="uk-form-label">{PHP.L.Search}</label>
				<div class="uk-form-controls">
					{SEARCH_SQ}
				</div>
			</div>
			<div class="col-sm">
				<label class="uk-form-label">{PHP.L.Category}</label>
				<div class="uk-form-controls">
					{SEARCH_CAT}
				</div>
			</div>
			<div class="col-sm">
				<label class="uk-form-label">{PHP.L.Show}</label>
				<div class="uk-form-controls">
					{SEARCH_FILTER}
				</div>
			</div>
			<div class="col-sm">
				<label class="uk-form-label">{PHP.L.Order}</label>
				<div class="uk-form-controls">
					{SEARCH_ORDER}
				</div>
			</div>
			<div class="col-sm">
				<label class="uk-form-label">&nbsp;</label>
				<div class="uk-form-controls">
					{SEARCH_WAY}
				</div>
			</div>
			<div class="col-sm-auto">
				<button type="submit" name="search"
						class="btn btn-primary">{PHP.L.Search}</button>
			</div>
		</form>
	</div>
	<form action="{PHP|cot_url('admin','m=page'),'',true}" id="page_form" method="POST">
		<div class="table-responsive">
			<table class="table table-divider small">
				<thead>
				<tr class="pageitem">
					<th width="8" class="ps-3">
						<input type="checkbox" class="form-check-input" data-id="post_arr"
							   onchange="tableCheck('post_arr')">
					</th>
					<th width="10" class="d-none d-md-table-cell">ID</th>
					<th width="300">{PHP.L.Title}</th>
					<th width="100">{PHP.L.Author}</th>
					<th width="100" class="d-none d-md-table-cell">{PHP.L.Category}</th>
					<th width="150"  class="d-none d-md-table-cell">{PHP.L.Public_date}</th>
					<th width="1%" class="uk-text-right">{PHP.L.Actions}</th>
				</tr>
				</thead>
				<tbody>
				<!-- BEGIN: PAGE_ROW -->
				<tr class="pageitem">
					<td class="ps-3"><input type="checkbox" name="post_arr[]" class="form-check-input" value="{ADMIN_PAGE_ID}"></td>
					<td class="d-none d-md-table-cell">{ADMIN_PAGE_ID}</td>
					<td class="uk-text-truncate">
						<a href="{ADMIN_PAGE_URL}" target="_blank"
						   class="btn btn-outline-secondary px-2 py-0"
						   uk-tooltip="{PHP.L.Preview}"><i class="bi bi-reply-all"></i></a>
						<a href="{ADMIN_PAGE_ID|cot_url("admin", "m=page&p=edit&id=$this")}"
						   class="btn-text">{ADMIN_PAGE_SHORTTITLE}</a>
					</td>
					<td class="d-none d-md-table-cell">{ADMIN_PAGE_OWNER_NAME|cot_rc_modify($this, 'target="_blank"')}</td>
					<td class="d-none d-md-table-cell">
						<a href="{ADMIN_PAGE_CAT|cot_url("admin", "m=page&c=$this")}">{ADMIN_PAGE_CATTITLE}</a>
					</td>
					<td class="text-muted small d-none d-md-table-cell">{ADMIN_PAGE_DATE}</td>
					<td class="text-end pe-3">
						<div class="btn-group">
							<a href="{ADMIN_PAGE_ID|cot_url("admin", "m=page&p=edit&id=$this")}" uk-tooltip="{PHP.L.Edit}"
							   class="btn btn-sm btn-primary">
								<i class="bi bi-pencil-fill"></i>
							</a>
							<!-- IF {ADMIN_PAGE_STATE} == 0 -->
							<a href="{ADMIN_PAGE_URL_FOR_UNVALIDATE}" class="btn btn-sm btn-outline-secondary confirm">
								<i class="bi bi-x"></i>
							</a>
							<!-- ENDIF -->
							<!-- IF {ADMIN_PAGE_STATE} OR {ADMIN_PAGE_STATE} == 1 -->
							<a href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="btn btn-sm btn-warning confirm">
								<i class="bi bi-check"></i>
							</a>
							<!-- ENDIF -->
							<a href="{ADMIN_PAGE_URL_FOR_DELETED}"  class="btn btn-sm btn-danger confirm">
								<i class="bi bi-trash-fill"></i>
							</a>
						</div>
					</td>
				</tr>
				<!-- END: PAGE_ROW -->
				</tbody>
				<tfooter>
					<tr class="pageitem">
						<th class="ps-3">
							<input type="checkbox" class="form-check-input" data-id="post_arr" data-part="2"
								   onchange="tableCheck('post_arr', 2)">
						</th>
						<th class="d-none d-md-table-cell">ID</th>
						<th>{PHP.L.Order_title}</th>
						<th>{PHP.L.Author}</th>
						<th class="d-none d-md-table-cell">{PHP.L.Category}</th>
						<th class="d-none d-md-table-cell">{PHP.L.Public_date}</th>
						<th class="text-end pe-3">{PHP.L.Actions}</th>
					</tr>
				</tfooter>
			</table>
		</div>
		<div class="card-footer">
			<div class="row">
				<div class="col-sm-auto d-flex">
					<select name="post_action" id="post_action" class="form-control">
						<option value="0">---</option>
						<option value="delete">{PHP.L.Delete}</option>
						<option value="validate">{PHP.L.Validate}</option>
					</select>
					<button type="submit" class="btn btn-outline-secondary ms-2">{PHP.L.Confirm}</button>
				</div>
				<div class="col-sm">
					<ul class="pagination">{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}</ul>
				</div>
				<div class="col-sm-auto">
					{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_PAGE_ON_PAGE}
				</div>
			</div>
		</div>
	</form>
</div>
<!-- END: MAIN -->





<h2>{PHP.L.Pages} ({ADMIN_PAGE_TOTALDBPAGES})</h2>
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="button-toolbar block">
		<a title="{PHP.L.Configuration}" href="{ADMIN_PAGE_URL_CONFIG}" class="button">{PHP.L.Configuration}</a>
		<a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="button">{PHP.L.adm_extrafields_desc}</a>
		<a href="{ADMIN_PAGE_URL_STRUCTURE}" class="button">{PHP.L.Categories}</a>
		<a href="{ADMIN_PAGE_URL_ADD}" class="button special">{PHP.L.page_addtitle}</a>
</div>

<div class="button-toolbar block">
	<form name="form_valqueue" method="get" action="{PHP|cot_url('admin', 'm=page')}">
		<!-- IF !{PHP|cot_plugin_active('urleditor')} OR {PHP.cfg.plugin.urleditor.preset} != 'handy' -->
		<input type="hidden" name="m" value="page" />
		<!-- ENDIF -->
		<!-- IF {ADMIN_PAGE_TOTALITEMS} > 1 -->
		{PHP.L.adm_sort} {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}
		<!-- ENDIF -->
		{PHP.L.Show} {ADMIN_PAGE_FILTER}
	<button type="submit">{PHP.L.Filter}</button>
	</form>
</div>

<div class="block">

	<form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}">
	<table class="cells">
		<tr>
			<td class="coltop width5">
				<!-- IF {PHP.cfg.jquery} -->
				<input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
				<!-- ENDIF -->
			</td>
			<td class="coltop width5">{PHP.L.Id}</td>
			<td class="coltop width65">{PHP.L.Title}</td>
			<td class="coltop width25">{PHP.L.Action}</td>
		</tr>
		<!-- BEGIN: PAGE_ROW -->
		<tr>
			<td class="centerall {ADMIN_PAGE_ODDEVEN}">
				<input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
			</td>
			<td class="centerall {ADMIN_PAGE_ODDEVEN}">
				{ADMIN_PAGE_ID}
			</td>
			<td class="{ADMIN_PAGE_ODDEVEN}">
				<div id="mor_{PHP.ii}" class='mor_info_on_off'>
					<span class="strong" style="cursor:hand;">{ADMIN_PAGE_SHORTTITLE}</span>
					<div class="moreinfo">
						<hr />
						<table class="flat">
							<tr>
								<td class="width20">{PHP.L.Category}:</td>
								<td class="width80">{ADMIN_PAGE_CATPATH_SHORT}</td>
							</tr>
							<tr>
								<td>{PHP.L.Description}:</td>
								<td>{ADMIN_PAGE_DESC}</td>
							</tr>
							<tr>
								<td>{PHP.L.Text}:</td>
								<td>{ADMIN_PAGE_TEXT}</td>
							</tr>
						</table>
					</div>
				</div>
			</td>
			<td class="action {ADMIN_PAGE_ODDEVEN}">
				<!-- IF {PHP.row.page_state} == 1 --><a title="{PHP.L.Validate}" href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="confirmLink button">{PHP.L.Validate}</a><!-- ENDIF -->
				<a title="{PHP.L.Delete}" href="{ADMIN_PAGE_URL_FOR_DELETED}" class="confirmLink button">{PHP.L.short_delete}</a>
				<a title="{PHP.L.Open}" href="{ADMIN_PAGE_ID_URL}" target="_blank" class="button special">{PHP.L.short_open}</a>
				<a title="{PHP.L.Edit}" href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="button">{PHP.L.Edit}</a>
			</td>
		</tr>
		<!-- END: PAGE_ROW -->
		<!-- IF {PHP.is_row_empty} -->
		<tr>
			<td class="centerall" colspan="4">{PHP.L.None}</td>
		</tr>
		<!-- ENDIF -->
		<tr>
			<td class="valid" colspan="4">
				<!-- IF {PHP.filter} != 'validated' -->
				<button name="paction" type="submit" value="validate" class="confirm">{PHP.L.Validate}</button>
				<!-- ENDIF -->
				<button name="paction" type="submit" value="delete" class="confirm">{PHP.L.Delete}</button>
			</td>
		</tr>
	</table>
	<p class="paging">
		{ADMIN_PAGE_PAGINATION_PREV}{ADMIN_PAGE_PAGNAV}{ADMIN_PAGE_PAGINATION_NEXT}<span>{PHP.L.Total}: {ADMIN_PAGE_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_PAGE_ON_PAGE}</span>
	</p>
	</form>
</div>
<script type="text/javascript">
	$('.moreinfo').hide();
	$('.mor_info_on_off').click(function() {
		let kk = $(this).attr('id');
		$('#' + kk).children('.moreinfo').slideToggle(100);
	});

	let submitButtons = document.querySelectorAll('.confirm');
	let form = document.getElementById('form_valqueue');
	submitButtons.forEach(function(elem) {
		elem.addEventListener('click', function(e) {
			let checkedCnt = form.querySelectorAll('input[type=checkbox]:checked').length;
			if (checkedCnt < 1) {
				e.preventDefault();
				return false;
			}

			let message = 'Are you sure?';
			switch(this.value) {
				case 'delete':
					message = '{PHP.L.page_confirm_delete}';
					break;

				case 'validate':
					message = '{PHP.L.page_confirm_validate}';
					break;
			}

			if (!confirm(message)) {
				e.preventDefault();
			}
		});
	});
</script>
