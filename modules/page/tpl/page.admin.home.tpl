<!-- BEGIN: MAIN -->
<div class="col-xxl-4 col-md-6">
	<div class="card info-card sales-card overflow-visible">
		<div class="filter">
			<a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
			<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
				<li><a class="dropdown-item" href="{ADMIN_HOME_URL}">{PHP.L.adm_valqueue}</a></li>
				<li><a class="dropdown-item" href="{PHP|cot_url('page','m=add')}">{PHP.L.Add}</a></li>
				<li><a class="dropdown-item" href="{PHP.db_pages|cot_url('admin','m=extrafields&n=$this')}">{PHP.L.home_ql_b2_2}</a></li>
			</ul>
		</div>
		<div class="card-body">
			<h5 class="card-title">{PHP.L.Pages}</h5>
			<div class="d-flex align-items-center">
				<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
					<i class="bi bi-file-earmark"></i>
				</div>
				<div class="ps-3">
					<h6>{ADMIN_HOME_PAGESPUBLISHED}</h6>
					<span class="text-warning small pt-1 fw-bold">{ADMIN_HOME_PAGESQUEUED}</span> <span class="text-muted small pt-2 ps-1">{PHP.L.page_validation}</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
