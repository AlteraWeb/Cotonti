<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}
<div class="card">
	<div class="card-body">
		<div class="card-title">{__('ipsearch_searchthisuser')}</div>
		<form id="search" action="{IPSEARCH_FORM_URL}" method="post">
			<div class="d-flex align-items-center gap-2">
				<input type="text" class="form-control" name="id" value="{IPSEARCH_ID}" size="16" maxlength="16" />
				<button type="submit" class="btn btn-primary">{__('Search')}</button>
			</div>
		</form>
	</div>
</div>
<!-- BEGIN: IPSEARCH_RESULTS -->
<div class="card">
	<div class="card-body">
		<div class="card-title">{__('ipsearch_dnsrecord')}: {IPSEARCH_RES_DNS}</div>
		<h5>
			{__('ipsearch_found1')} {IPSEARCH_TOTALMATCHES1}
			{__('ipsearch_found2')} {IPSEARCH_IPMASK1}:
		</h5>
		<ul class="list-group">
			<!-- BEGIN: IPSEARCH_IPMASK1 -->
			<li class="list-group-item">{IPSEARCH_USER_IPMASK1}: {IPSEARCH_USER_LASTIP_IPMASK1}</li>
			<!-- END: IPSEARCH_IPMASK1 -->
		</ul>
		<h5 class="mt-3">
			{__('ipsearch_found1')} {IPSEARCH_TOTALMATCHES2}
			{__('ipsearch_found2')} {IPSEARCH_IPMASK2}.*:
		</h5>
		<ul class="list-group">
			<!-- BEGIN: IPSEARCH_IPMASK2 -->
			<li class="list-group-item">{IPSEARCH_USER_IPMASK2}: {IPSEARCH_USER_LASTIP_IPMASK2}</li>
			<!-- END: IPSEARCH_IPMASK2 -->
		</ul>
		<h5 class="mt-3">
			{__('ipsearch_found1')} {IPSEARCH_TOTALMATCHES3}
			{__('ipsearch_found2')} {IPSEARCH_IPMASK3}.*.*:
		</h5>
		<ul class="list-group">
			<!-- BEGIN: IPSEARCH_IPMASK3 -->
			<li class="list-group-item">{IPSEARCH_USER_IPMASK3}: {IPSEARCH_USER_LASTIP_IPMASK3}</li>
			<!-- END: IPSEARCH_IPMASK3 -->
		</ul>
	</div>
</div>
<!-- END: IPSEARCH_RESULTS -->
<!-- END: MAIN -->
