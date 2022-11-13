<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="dashboard">
	<div class="card">
		<div class="filter">
			<a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
			<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
				<li><a class="dropdown-item" href="{ADMIN_TRASHCAN_CONF_URL}">{__('Configuration')}</a></li>
				<li><a class="dropdown-item" href="{ADMIN_TRASHCAN_WIPEALL_URL}">{__('Wipeall')}</a></li>
			</ul>
		</div>
		<div class="card-body">
			<table class="table">
				<thead>
					<tr>
						<th>{__('Type')}</th>
						<th>{__('Date')}</th>
						<th>{__('Title')}</th>
						<th>{__('adm_setby')}</th>
						<th>{__('Action')}</th>
					</tr>
				</thead>
				<!-- BEGIN: TRASHCAN_ROW -->
				<tr>
					<td>{ADMIN_TRASHCAN_TYPESTR_ICON}</td>
					<td>
						<span class="text-black-50">{ADMIN_TRASHCAN_DATE}</span>
					</td>
					<td>
						<a href="{ADMIN_TRASHCAN_ROW_INFO_URL}">{ADMIN_TRASHCAN_TITLE}</a>
					</td>
					<td>{ADMIN_TRASHCAN_TRASHEDBY}</td>
					<td>
						<div class="btn-group">
							<!-- IF {ADMIN_TRASHCAN_ROW_RESTORE_ENABLED} -->
							<a title="{__('Restore')}" href="{ADMIN_TRASHCAN_ROW_RESTORE_URL}" class="btn btn-sm btn-primary">
								{__('Restore')}
							</a>
							<!-- ENDIF -->
							<a title="{__('Wipe')}" href="{ADMIN_TRASHCAN_ROW_WIPE_URL}" class="btn btn-sm btn-danger">
								{__('Delete')}
							</a>
						</div>
					</td>
				</tr>
				<!-- END: TRASHCAN_ROW -->
			</table>
			<div class="mt-5 d-flex align-center justify-content-between">
				<div>
					<ul class="pagination mb-1">{ADMIN_TRASHCAN_PAGINATION_PREV}{ADMIN_TRASHCAN_PAGNAV}{ADMIN_TRASHCAN_PAGINATION_NEXT}</ul>
				</div>
				<div class="small text-end">
					{__('Total')}: {ADMIN_TRASHCAN_TOTALITEMS},
					{__('Onpage')}: {ADMIN_TRASHCAN_COUNTER_ROW}
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
