<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}

<!-- BEGIN: TABLELIST -->
<div class="block">
	<table class="cells">
		<!-- BEGIN: ROW -->
		<tr>
			<td><a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}">{ADMIN_EXTRAFIELDS_ROW_TABLENAME}</a></td>
		</tr>
		<!-- END: ROW -->
	</table>
	<a href="{ADMIN_EXTRAFIELDS_ALLTABLES}">{PHP.L.adm_extrafields_all}</a>
</div>
<!-- END: TABLELIST -->

<!-- BEGIN: TABLE -->
	<!-- IF {ADMIN_EXTRAFIELDS_TOTALITEMS} -->
	<div class="d-flex align-items-start">
		<div class="nav flex-column nav-pills me-3 w-25" id="v-pills-tab" role="tablist" aria-orientation="vertical">
			<button class="nav-link" id="exAdd-tab" data-bs-toggle="pill" data-bs-target="#exAdd" type="button" role="tab" aria-controls="exAdd" aria-selected="true">
				{__('adm_extrafield_new')}
			</button>
			<!-- BEGIN: EXTRAFIELDS_LIST -->
			<button class="nav-link <!-- IF {PHP.ii} == 1 -->active<!-- ENDIF -->" id="ex{ADMIN_EXTRAFIELDS_ROW_ID}-tab" data-bs-toggle="pill" data-bs-target="#ex{ADMIN_EXTRAFIELDS_ROW_ID}" type="button" role="tab" aria-controls="ex{ADMIN_EXTRAFIELDS_ROW_ID}" aria-selected="true">
				<!-- IF {ADMIN_EXTRAFIELDS_ROW_TITLE} -->
				{ADMIN_EXTRAFIELDS_ROW_TITLE}
				<!-- ELSE -->
				{ADMIN_EXTRAFIELDS_ROW_ID}
				<!-- ENDIF -->
			</button>
			<!-- END: EXTRAFIELDS_LIST -->
		</div>
		<div class="tab-content w-100" id="v-pills-tabContent">
			<div class="tab-pane fade" id="exAdd" role="tabpanel" aria-labelledby="exAdd-tab">
				<div class="card card-body">
					<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
						<div class="row">
							<div class="col-md">
								<h3 class="card-title">{__('adm_extrafield_new')}</h3>
							</div>
							<div class="col-md-auto">
								<div class="mt-3">
									{ADMIN_EXTRAFIELDS_REQUIRED}
								</div>
							</div>
						</div>
						{ADMIN_EXTRAFIELDS_ENABLED|cot_rc_modify($this, "type='hidden'")}
						<div class="row mb-3">
							<div class="col-md">
								<label class="w-100">
									<div>{PHP.L.extf_Name}</div>
									{ADMIN_EXTRAFIELDS_NAME|cot_rc_modify($this, "pattern='^[a-z0-9_]+$' required")}
								</label>
							</div>
							<div class="col-md-3">
								<label class="w-100">
									<div>{PHP.L.extf_Type}</div>
									{ADMIN_EXTRAFIELDS_SELECT}
								</label>
							</div>
							<div class="col-md-3">
								<label class="w-100">
									<div>{PHP.L.adm_extrafield_parse}</div>
									{ADMIN_EXTRAFIELDS_PARSE}
								</label>
							</div>
						</div>
						<div class="row row-cols-md-2 mb-3">
							<div>
								<label class="w-100">
									<div>{PHP.L.extf_Description}</div>
									{ADMIN_EXTRAFIELDS_DESCRIPTION|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
							<div>
								<label class="w-100">
									<div>{PHP.L.extf_Base_HTML}</div>
									{ADMIN_EXTRAFIELDS_HTML|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
						</div>
						<div class="row row-cols-md-2 mb-3">
							<div>
								<label class="w-100">
									<div>{PHP.L.adm_extrafield_params}</div>
									{ADMIN_EXTRAFIELDS_PARAMS|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
							<div>
								<label class="w-100">
									<div class="small">{PHP.L.adm_extrafield_selectable_values}</div>
									{ADMIN_EXTRAFIELDS__VARIANTS|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
						</div>
						<div class="row row-cols-md-2 mb-3">
							<div>
								<label class="w-100">
									<div class="small">{PHP.L.adm_extrafield_default}</div>
									{ADMIN_EXTRAFIELDS_DEFAULT|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
							<div>
								<div class="uk-h4 uk-margin-remove">Help!</div>
								<ul class="uk-list uk-list-collapse uk-margin-small-top small">
									<!-- FOR {KEY}, {VALUE} IN {ADMIN_EXTRAFIELDS_TAGS} -->
									<li><b>{KEY}:</b> {VALUE}</li>
									<!-- ENDFOR -->
								</ul>
							</div>
						</div>
						<div>
							<button type="submit"
									class="confirm btn btn-primary btn-sm">{PHP.L.Update}</button>
						</div>
					</form>
				</div>
			</div>
			<!-- BEGIN: EXTRAFIELDS_ROW -->
			<div class="tab-pane fade <!-- IF {PHP.ii} == 1 -->show active<!-- ENDIF -->" id="ex{ADMIN_EXTRAFIELDS_ROW_ID}" role="tabpanel" aria-labelledby="ex{ADMIN_EXTRAFIELDS_ROW_ID}-tab">
				<div class="card card-body">
					<form action="{ADMIN_EXTRAFIELDS_ROW_FORM_EDIT}" method="post">
						<div class="row">
							<div class="col-md">
								<h3 class="card-title">{ADMIN_EXTRAFIELDS_ROW_TITLE} ({ADMIN_EXTRAFIELDS_ROW_ID})</h3>
							</div>
							<div class="col-md-auto">
								<div class="mt-3">
									{ADMIN_EXTRAFIELDS_ROW_REQUIRED}
								</div>
							</div>
						</div>
						{ADMIN_EXTRAFIELDS_ROW_ENABLED|cot_rc_modify($this, "type='hidden'")}
						<div class="row mb-3">
							<div class="col-md">
								<label class="w-100">
									<div>{PHP.L.extf_Name}</div>
									{ADMIN_EXTRAFIELDS_ROW_NAME|cot_rc_modify($this, "pattern='^[a-z0-9_]+$' required")}
								</label>
							</div>
							<div class="col-md-3">
								<label class="w-100">
									<div>{PHP.L.extf_Type}</div>
									{ADMIN_EXTRAFIELDS_ROW_SELECT}
								</label>
							</div>
							<div class="col-md-3">
								<label class="w-100">
									<div>{PHP.L.adm_extrafield_parse}</div>
									{ADMIN_EXTRAFIELDS_ROW_PARSE}
								</label>
							</div>
						</div>
							<div class="row row-cols-md-2 mb-3">
							<div>
								<label class="w-100">
									<div>{PHP.L.extf_Description}</div>
									{ADMIN_EXTRAFIELDS_ROW_DESCRIPTION|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
							<div>
								<label class="w-100">
									<div>{PHP.L.extf_Base_HTML}</div>
									{ADMIN_EXTRAFIELDS_ROW_HTML|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
						</div>
						<div class="row row-cols-md-2 mb-3">
							<div>
								<label class="w-100">
									<div>{PHP.L.adm_extrafield_params}</div>
									{ADMIN_EXTRAFIELDS_ROW_PARAMS|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
							<div>
								<label class="w-100">
									<div class="small">{PHP.L.adm_extrafield_selectable_values}</div>
									{ADMIN_EXTRAFIELDS_ROW_VARIANTS|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
						</div>
						<div class="row row-cols-md-2 mb-3">
							<div>
								<label class="w-100">
									<div class="small">{PHP.L.adm_extrafield_default}</div>
									{ADMIN_EXTRAFIELDS_ROW_DEFAULT|cot_rc_modify($this, 'rows="2"')}
								</label>
							</div>
							<div>
								<div class="uk-h4 uk-margin-remove">Help!</div>
								<ul class="uk-list uk-list-collapse uk-margin-small-top small">
									<!-- FOR {KEY}, {VALUE} IN {ADMIN_EXTRAFIELDS_TAGS} -->
									<li><b>{KEY}:</b> {VALUE}</li>
									<!-- ENDFOR -->
								</ul>
							</div>
						</div>
						<div>
							<a title="{PHP.L.Delete}"
							   onclick="UIkit.modal.confirm('{PHP.L.adm_are_you_sure}').then(function() { top.location.href= '{ADMIN_EXTRAFIELDS_ROW_DEL_URL}'});"
							   class="ajax btn btn-danger btn-sm float-end">{PHP.L.Delete}</a>
							<button type="submit"
									class="confirm btn btn-primary btn-sm">{PHP.L.Update}</button>
						</div>
					</form>
				</div>
			</div>
			<!-- END: EXTRAFIELDS_ROW -->
		</div>
	</div>
	<!-- ELSE -->
	<div class="card card-body">
		<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
			<div class="row">
				<div class="col-md">
					<h3 class="card-title">{__('adm_extrafield_new')}</h3>
				</div>
				<div class="col-md-auto">
					<div class="mt-3">
						{ADMIN_EXTRAFIELDS_REQUIRED}
					</div>
				</div>
			</div>
			{ADMIN_EXTRAFIELDS_ENABLED|cot_rc_modify($this, "type='hidden'")}
			<div class="row mb-3">
				<div class="col-md">
					<label class="w-100">
						<div>{PHP.L.extf_Name}</div>
						{ADMIN_EXTRAFIELDS_NAME|cot_rc_modify($this, "pattern='^[a-z0-9_]+$' required")}
					</label>
				</div>
				<div class="col-md-3">
					<label class="w-100">
						<div>{PHP.L.extf_Type}</div>
						{ADMIN_EXTRAFIELDS_SELECT}
					</label>
				</div>
				<div class="col-md-3">
					<label class="w-100">
						<div>{PHP.L.adm_extrafield_parse}</div>
						{ADMIN_EXTRAFIELDS_PARSE}
					</label>
				</div>
			</div>
			<div class="row row-cols-md-2 mb-3">
				<div>
					<label class="w-100">
						<div>{PHP.L.extf_Description}</div>
						{ADMIN_EXTRAFIELDS_DESCRIPTION|cot_rc_modify($this, 'rows="2"')}
					</label>
				</div>
				<div>
					<label class="w-100">
						<div>{PHP.L.extf_Base_HTML}</div>
						{ADMIN_EXTRAFIELDS_HTML|cot_rc_modify($this, 'rows="2"')}
					</label>
				</div>
			</div>
			<div class="row row-cols-md-2 mb-3">
				<div>
					<label class="w-100">
						<div>{PHP.L.adm_extrafield_params}</div>
						{ADMIN_EXTRAFIELDS_PARAMS|cot_rc_modify($this, 'rows="2"')}
					</label>
				</div>
				<div>
					<label class="w-100">
						<div class="small">{PHP.L.adm_extrafield_selectable_values}</div>
						{ADMIN_EXTRAFIELDS__VARIANTS|cot_rc_modify($this, 'rows="2"')}
					</label>
				</div>
			</div>
			<div class="row row-cols-md-2 mb-3">
				<div>
					<label class="w-100">
						<div class="small">{PHP.L.adm_extrafield_default}</div>
						{ADMIN_EXTRAFIELDS_DEFAULT|cot_rc_modify($this, 'rows="2"')}
					</label>
				</div>
				<div>
					<div class="uk-h4 uk-margin-remove">Help!</div>
					<ul class="uk-list uk-list-collapse uk-margin-small-top small">
						<!-- FOR {KEY}, {VALUE} IN {ADMIN_EXTRAFIELDS_TAGS} -->
						<li><b>{KEY}:</b> {VALUE}</li>
						<!-- ENDFOR -->
					</ul>
				</div>
			</div>
			<div>
				<a title="{PHP.L.Delete}"
				   onclick="UIkit.modal.confirm('{PHP.L.adm_are_you_sure}').then(function() { top.location.href= '{ADMIN_EXTRAFIELDS_ROW_DEL_URL}'});"
				   class="ajax btn btn-danger btn-sm float-end">{PHP.L.Delete}</a>
				<button type="submit"
						class="confirm btn btn-primary btn-sm">{PHP.L.Update}</button>
			</div>
		</form>
	</div>
	<!-- ENDIF -->
<!-- END: TABLE -->

<!-- END: MAIN -->
