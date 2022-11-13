<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
	<div class="card-body">
		<div class="row align-items-center">
			<div class="col-10">
				<div class="card-title">{__('editdeleteentries')}</div>
			</div>
			<div class="col-2 text-end">
				<button class="btn btn-sm btn-primary" data-bs-toggle="modal" data-bs-target="#addModal">{__('Add')}</button>
			</div>
		</div>
		<table class="table">
			<thead>
			<tr>
				<th>{__('banlist_ipmask')}</th>
				<th>{__('banlist_emailmask')}</th>
				<th>{__('banlist_reason')}</th>
				<th>{__('banlist_duration')}</th>
				<th width="200px">{__('Action')}</th>
			</tr>
			</thead>
			<!-- BEGIN: ADMIN_BANLIST_ROW -->
			<form name="savebanlist_{ADMIN_BANLIST_ROW_ID}" id="savebanlist_{ADMIN_BANLIST_ROW_ID}" action="{ADMIN_BANLIST_ROW_URL}" method="post">
				<tr class="align-baseline">
					<td>{ADMIN_BANLIST_ROW_IP}</td>
					<td>{ADMIN_BANLIST_ROW_EMAIL}</td>
					<td>{ADMIN_BANLIST_ROW_REASON}</td>
					<td class="text-center">
						<span class="badge bg-secondary">
							{ADMIN_BANLIST_ROW_EXPIRE}
						</span>
					</td>
					<td >
						<button type="submit" class="btn btn-sm btn-primary">{PHP.L.Update}</button>
						<button type="submit" class="btn btn-sm btn-danger" onclick="window.location.replace('{ADMIN_BANLIST_ROW_DELURL}'); return false;">{PHP.L.Delete}</button>
					</td>
				</tr>
			</form>
			<!-- END: ADMIN_BANLIST_ROW -->
		</table>
	</div>
</div>
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="addModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="addModalLabel">{__('Add')}</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			</div>
			<form name="addbanlist" id="addbanlist" action="{ADMIN_BANLIST_URLFORMADD}" method="post" class="ajax">
				<div class="modal-body">
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">{__('banlist_ipmask')}</label>
						{ADMIN_BANLIST_IP}
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">{__('banlist_emailmask')}</label>
						{ADMIN_BANLIST_EMAIL}
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">{__('banlist_reason')}</label>
						{ADMIN_BANLIST_REASON}
					</div>
					<div class="mb-3">
						<label for="exampleInputEmail1" class="form-label">{__('banlist_duration')}</label>
						{ADMIN_BANLIST_EXPIRE}
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary" data-bs-dismiss="modal">{__('Add')}</button>
				</div>
			</form>
		</div>
	</div>
</div>
<!-- END: MAIN -->
