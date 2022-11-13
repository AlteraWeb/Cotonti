<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
	<div class="card-body">
		<div class="card-title">{__('viewdeleteentries')}</div>
		<form name="sortfiltertag" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
			<div class="d-flex align-items-end gap-2">
				<!-- IF {ADMIN_TAGS_TOTALITEMS} > 1 -->
				<div>
					<label for="exampleFormControlInput1" class="form-label">{__('adm_sort')}</label>
					{ADMIN_TAGS_ORDER}
				</div>
				<div>{ADMIN_TAGS_WAY}</div>
				<!-- ENDIF -->
				<div>
					<label for="exampleFormControlInput1" class="form-label">{__('Show')}</label>
					{ADMIN_TAGS_FILTER}
				</div>
				<div>
					<label for="exampleFormControlInput1" class="form-label">{__('Search')}</label>
					<input name="tag" type="text" value="" class="form-control"/>
				</div>
				<div>
					<button class="btn btn-primary" name="paction" type="submit">{__('Filter')}</button>
				</div>
			</div>
		</form>
		<table class="table">
			<thead>
				<tr>
					<th>{__('Code')}</th>
					<th>{__('adm_area')}</th>
					<th>{__('Count')}</th>
					<th> {__('adm_tag_item_area')}</th>
					<th>{__('Action')}</th>
				</tr>
			</thead>
			<tbody>
				<!-- BEGIN: ADMIN_TAGS_ROW -->
				<tr>
					<td><b>{ADMIN_TAGS_CODE}</b></td>
					<td>{ADMIN_TAGS_AREA}</td>
					<td>{ADMIN_TAGS_COUNT}</td>
					<td>
						<div id="mor_{PHP.ii}" class='mor_info_on_off'>
							<span style="cursor:pointer;">{ADMIN_TAGS_ITEMS}</span><br />
							<div class="moreinfo">
								<!-- BEGIN: ADMIN_TAGS_ROW_ITEMS -->
								{ADMIN_TAGS_ITEM_TITLE}<br />
								<!-- END: ADMIN_TAGS_ROW_ITEMS -->
							</div>
						</div>
					</td>
					<td>
						<form name="tagedit{PHP.ii}" action="{ADMIN_TAGS_FORM_ACTION}" method="post">
							<input name="old_tag" type="hidden" value="{ADMIN_TAGS_CODE|htmlspecialchars($this)}" />
							<input name="d" type="hidden" value="{PHP.d}" />
							<input name="sorttype" type="hidden" value="{PHP.sorttype}" />
							<input name="sortway" type="hidden" value="{PHP.sortway}" />
							<input name="filter" type="hidden" value="{PHP.filter}" />
							{ADMIN_TAGS_TAG}
							<input name="action" type="submit" value="{PHP.L.Edit}" /><!--//<a title="{PHP.L.Edit}" href="{ADMIN_TAGS_URL_FOR_EDIT}" target="_blank" class="button">{PHP.L.Edit}</a>//-->
							<input name="action" type="submit" value="{PHP.L.Delete}" /><!--//<a title="{PHP.L.Delete}" href="{ADMIN_TAGS_DEL_URL}" class="ajax button">{PHP.L.Delete}</a>//-->
						</form>
					</td>
				</tr>
				<!-- END: ADMIN_TAGS_ROW -->
			</tbody>
		</table>
		<div class="mt-5 d-flex align-center justify-content-between">
			<div>
				<ul class="pagination mb-1">{ADMIN_TAGS_PAGINATION_PREV}{ADMIN_TAGS_PAGNAV}{ADMIN_TAGS_PAGINATION_NEXT}</ul>
			</div>
			<div class="small text-end">
				{__('Total')}: {ADMIN_TAGS_TOTALITEMS},
				{__('Onpage')}: {ADMIN_TAGS_COUNTER_ROW}
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function()
	{
		$('.moreinfo').hide();
		$(".mor_info_on_off").click(function()
		{
			var kk = $(this).attr('id');
			$('#'+kk).children('.moreinfo').slideToggle(100);
		});
	});
</script>
<!-- END: MAIN -->
