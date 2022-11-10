<!-- BEGIN: MAIN -->
<div class="col-xxl-4 col-md-4">
	<div class="card info-card customers-card overflow-visible">
		<div class="filter">
			<a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
			<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
				<li><a class="dropdown-item" href="{PHP|cot_url('admin','m=config&amp;n=edit&amp;o=module&amp;p=users')}">{PHP.L.home_ql_b3_1}</a></li>
				<li><a class="dropdown-item" href="{PHP.db_users|cot_url('admin','m=extrafields&amp;n=$this')}">{PHP.L.home_ql_b3_2}</a></li>
				<li><a class="dropdown-item" href="{PHP|cot_url('admin','m=users')}">{PHP.L.home_ql_b3_4}</a></li>
			</ul>
		</div>
		<div class="card-body">
			<h5 class="card-title">{PHP.L.Users}</h5>
			<div class="d-flex align-items-center">
				<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
					<i class="bi bi-people"></i>
				</div>
				<div class="ps-3">
					<h6>{ADMIN_HOME_TOTAL_USERS}</h6>
					<span class="text-warning small pt-1 fw-bold">{ADMIN_HOME_INACTIVE_USERS}</span> <span class="text-muted small pt-2 ps-1">{PHP.L.Inactive}</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->
