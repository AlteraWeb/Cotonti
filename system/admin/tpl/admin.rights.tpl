<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<form name="saverights" id="saverights" action="{ADMIN_RIGHTS_FORM_URL}" method="post">
	<div class="fixed-bottom bottom-tools align-items-center">
		<div>
			<!-- IF {PHP.g} > 5 -->
			<div class="d-flex gap-2 align-items-center">
				<div>
					<input type="checkbox" class="form-check" name="ncopyrightsconf" />
				</div>
				{__('adm_copyrightsfrom')}:
				<div>{ADMIN_RIGHTS_SELECTBOX_GROUPS}</div>
			</div>
			<!-- ENDIF -->
		</div>
		<div>
			<a href="{ADMIN_RIGHTS_ADVANCED_URL}" class="btn btn-sm btn-outline-primary">{PHP.L.More}</a>
			<button type="submit" class="btn btn-sm btn-primary">
				{__('Update')}
			</button>
		</div>
	</div>

	<!-- BEGIN: RIGHTS_SECTION -->
	<div class="card">
		<div class="card-body">
			<div class="card-title">{RIGHTS_SECTION_TITLE}</div>
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th class="align-top" rowspan="2" width="64"></th>
							<th class="align-top" rowspan="2">{__('Section')}</th>
							<th class="align-top" colspan="{ADMIN_RIGHTS_ADV_COLUMNS}">{__('Rights')}</th>
							<th class="align-top text-end" width="200" rowspan="2">{__('adm_rightspergroup')}</th>
						</tr>
						<tr>
							<td class="align-top text-center">{PHP.R.admin_icon_auth_r}</td>
							<td class="align-top text-center">{PHP.R.admin_icon_auth_w}</td>
							<td class="align-top text-center">{PHP.R.admin_icon_auth_1}</td>
							<!-- IF {PHP.advanced} -->
							<td class="align-top text-center">{PHP.R.admin_icon_auth_2}</td>
							<td class="align-top text-center">{PHP.R.admin_icon_auth_3}</td>
							<td class="align-top text-center">{PHP.R.admin_icon_auth_4}</td>
							<td class="align-top text-center">{PHP.R.admin_icon_auth_5}</td>
							<!-- ENDIF -->
							<td class="align-top text-center">{PHP.R.admin_icon_auth_a}</td>
						</tr>
					</thead>
					<tbody>
						<!-- BEGIN: RIGHTS_ROW -->
						<tr>
							<td class="text-center">
								<!-- IF {ADMIN_RIGHTS_ROW_ICO} -->
								<img src="{ADMIN_RIGHTS_ROW_ICO}"/>
								<!-- ELSE -->
								<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png"/>
								<!-- ENDIF -->
							</td>
							<td><a href="{ADMIN_RIGHTS_ROW_LINK}">{ADMIN_RIGHTS_ROW_TITLE}</a></td>
							<!-- BEGIN: RIGHTS_ROW_ITEMS -->
							<td class="text-center" width="10">
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND {PHP.out.tpl_rights_parseline_state} -->
								<input type="hidden" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" value="1" />
								{PHP.R.admin_icon_discheck1}
								<!-- ENDIF -->
								<!-- IF {PHP.out.tpl_rights_parseline_locked} AND !{PHP.out.tpl_rights_parseline_state} -->
								{PHP.R.admin_icon_discheck0}
								<!-- ENDIF -->
								<!-- IF !{PHP.out.tpl_rights_parseline_locked} -->
								<input type="checkbox" class="checkbox" name="{ADMIN_RIGHTS_ROW_ITEMS_NAME}" {ADMIN_RIGHTS_ROW_ITEMS_CHECKED} {ADMIN_RIGHTS_ROW_ITEMS_DISABLED} />
								<!-- ENDIF -->
							</td>
							<!-- END: RIGHTS_ROW_ITEMS -->
							<td class="text-end">
								<div class="btn-group">
									<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_RIGHTSBYITEM}" class="btn btn-danger btn-sm">{__('Rights')}</a>
									<a title="{PHP.L.Rights}" href="{ADMIN_RIGHTS_ROW_LINK}" class="btn btn-primary btn-sm">{__('Open')}</a>
								</div>
							</td>
						</tr>
						<!-- END: RIGHTS_ROW -->
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- END: RIGHTS_SECTION -->
</form>
<!-- END: MAIN -->

<!-- BEGIN: RIGHTS_HELP -->
	<p>{PHP.R.admin_icon_auth_r}&nbsp; {PHP.L.Read}</p>
	<p>{PHP.R.admin_icon_auth_w}&nbsp; {PHP.L.Write}</p>
	<p>{PHP.R.admin_icon_auth_1}&nbsp; {PHP.L.Custom} #1</p>
	<!-- IF {PHP.advanced} --><p>{PHP.R.admin_icon_auth_2}&nbsp; {PHP.L.Custom} #2</p>
	<p>{PHP.R.admin_icon_auth_3}&nbsp; {PHP.L.Custom} #3</p>
	<p>{PHP.R.admin_icon_auth_4}&nbsp; {PHP.L.Custom} #4</p>
	<p>{PHP.R.admin_icon_auth_5}&nbsp; {PHP.L.Custom} #5</p><!-- ENDIF -->
	<p>{PHP.R.admin_icon_auth_a}&nbsp; {PHP.L.Administration}</p>
<!-- END: RIGHTS_HELP -->
