<!-- BEGIN: MAIN -->
<div class="mb-3">{ADMIN_HITS_MAXHITS}</div>
<!-- BEGIN: YEAR_OR_MONTH -->
<div class="card">
    <div class="card-body">
        <h5 class="card-title">{ADMIN_HITS_MAXHITS}</h5>
        <div id="hitsChart" style="min-height: 250px;"></div>
    </div>
</div>
<div class="card">
    <div class="card-body">
        <h5 class="card-title">{__('Views')}: {PHP.v}</h5>
        <table class="table">
            <thead>
                <tr>
                    <td>{__('Date')}</td>
                    <td>{__('Hits')}</td>
                    <td></td>
                </tr>
            </thead>
            <tbody>
            <!-- BEGIN: ROW -->
            <tr>
                <td>{ADMIN_HITS_ROW_DAY}</td>
                <td>{ADMIN_HITS_ROW_HITS}</td>
                <td>
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width: {ADMIN_HITS_ROW_PERCENTBAR}%;" aria-valuenow="{ADMIN_HITS_ROW_PERCENTBAR}" aria-valuemin="0" aria-valuemax="100">{ADMIN_HITS_ROW_PERCENTBAR}%</div>
                    </div>
                </td>
            </tr>
            <!-- END: ROW -->
            </tbody>
        </table>
    </div>
</div>

<script>
    try {
        document.addEventListener("DOMContentLoaded", () => {
            new ApexCharts(document.querySelector("#hitsChart"), {
                series: [{
                    name: '{__('Views')}',
                    data: {ADMIN_HITS_YEAR_OR_MONTH_VIEWS}.reverse(),
                }],
                chart: {
                    height: 250,
                    type: 'area',
                    toolbar: {
                        show: false
                    },
                },
                markers: {
                    size: 4
                },
                colors: ['#4154f1', '#2eca6a', '#ff771d'],
                fill: {
                    type: "gradient",
                    gradient: {
                        shadeIntensity: 1,
                        opacityFrom: 0.3,
                        opacityTo: 0.4,
                        stops: [0, 90, 100]
                    }
                },
                dataLabels: {
                    enabled: true
                },
                stroke: {
                    curve: 'smooth',
                    width: 2
                },
                xaxis: {
                    type: 'date',
                    categories: {ADMIN_HITS_YEAR_OR_MONTH_DATES}.reverse()
                },
                tooltip: {
                    x: {
                        format: 'dd/MM/yy'
                    },
                }
            }).render();
        });
    } catch (e) {
        console.log(e.message)
    }
</script>
<!-- END: YEAR_OR_MONTH -->

<!-- BEGIN: DEFAULT -->
<div class="dashboard">
    <div class="card">
        <div class="card-body">
            <h5 class="card-title">{__('hits_byweek')}</h5>
            <div id="hitsByWeekChart" style="min-height: 250px;"></div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="filter">
                    <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                        <li class="dropdown-header text-start"><h6>{__('ReadMore')}</h6></li>
                        <!-- BEGIN: ROW_MONTH -->
                        <li><a class="dropdown-item" href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></li>
                        <!-- END: ROW_MONTH -->
                    </ul>
                </div>
                <div class="card-body">
                    <h5 class="card-title">{__('hits_bymonth')}</h5>
                    <div id="hitsByMonthChart" style="min-height: 250px;"></div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="card">
                <div class="filter">
                    <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                    <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                        <li class="dropdown-header text-start"><h6>{__('ReadMore')}</h6></li>
                        <!-- BEGIN: ROW_YEAR -->
                        <li><a class="dropdown-item" href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></li>
                        <!-- END: ROW_YEAR -->
                    </ul>
                </div>
                <div class="card-body">
                    <h5 class="card-title">{__('hits_byyear')}</h5>
                    <div id="hitsByYearChart" style="min-height: 250px;"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    try {
        document.addEventListener("DOMContentLoaded", () => {
            new ApexCharts(document.querySelector("#hitsByYearChart"), {
                series: [{
                    name: '{__('Views')}',
                    data: {ADMIN_HITS_YEAR_VIEWS}.reverse(),
                }],
                chart: {
                    height: 250,
                    type: 'area',
                    toolbar: {
                        show: false
                    },
                },
                markers: {
                    size: 4
                },
                colors: ['#4154f1', '#2eca6a', '#ff771d'],
                fill: {
                    type: "gradient",
                    gradient: {
                        shadeIntensity: 1,
                        opacityFrom: 0.3,
                        opacityTo: 0.4,
                        stops: [0, 90, 100]
                    }
                },
                dataLabels: {
                    enabled: true
                },
                stroke: {
                    curve: 'smooth',
                    width: 2
                },
                xaxis: {
                    type: 'date',
                    categories: {ADMIN_HITS_YEAR_DATES}.reverse()
                },
                tooltip: {
                    x: {
                        format: 'dd/MM/yy'
                    },
                }
            }).render();
            new ApexCharts(document.querySelector("#hitsByMonthChart"), {
                series: [{
                    name: '{__('Views')}',
                    data: {ADMIN_HITS_MONTH_VIEWS}.reverse(),
                }],
                chart: {
                    height: 250,
                    type: 'area',
                    toolbar: {
                        show: false
                    },
                },
                markers: {
                    size: 4
                },
                colors: ['#4154f1', '#2eca6a', '#ff771d'],
                fill: {
                    type: "gradient",
                    gradient: {
                        shadeIntensity: 1,
                        opacityFrom: 0.3,
                        opacityTo: 0.4,
                        stops: [0, 90, 100]
                    }
                },
                dataLabels: {
                    enabled: true
                },
                stroke: {
                    curve: 'smooth',
                    width: 2
                },
                xaxis: {
                    type: 'date',
                    categories: {ADMIN_HITS_MONTH_DATES}.reverse()
                },
                tooltip: {
                    x: {
                        format: 'dd/MM/yy'
                    },
                }
            }).render();
            new ApexCharts(document.querySelector("#hitsByWeekChart"), {
                series: [{
                    name: '{__('Views')}',
                    data: {ADMIN_HITS_WEEK_VIEWS}.reverse(),
                }],
                chart: {
                    height: 250,
                    type: 'area',
                    toolbar: {
                        show: false
                    },
                },
                markers: {
                    size: 4
                },
                colors: ['#4154f1', '#2eca6a', '#ff771d'],
                fill: {
                    type: "gradient",
                    gradient: {
                        shadeIntensity: 1,
                        opacityFrom: 0.3,
                        opacityTo: 0.4,
                        stops: [0, 90, 100]
                    }
                },
                dataLabels: {
                    enabled: true
                },
                stroke: {
                    curve: 'smooth',
                    width: 2
                },
                xaxis: {
                    type: 'date',
                    categories: {ADMIN_HITS_WEEK_DATES}.reverse()
                },
                tooltip: {
                    x: {
                        format: 'dd/MM/yy'
                    },
                }
            }).render();
        });
    } catch (e) {
        console.log(e.message)
    }
</script>
<!-- END: DEFAULT -->

<!-- END: MAIN -->


<h2>{PHP.L.Hits}</h2>
<p>{ADMIN_HITS_MAXHITS}</p>
<div class="block">
    <!-- BEGIN: YEAR_OR_MONTH -->
    <h3>{PHP.v}:</h3>
    <table class="cells">
        <!-- BEGIN: ROW -->
        <tr>
            <td class="width15">{ADMIN_HITS_ROW_DAY}</td>
            <td class="width15">{PHP.L.Hits}: {ADMIN_HITS_ROW_HITS}</td>
            <td class="width10">{ADMIN_HITS_ROW_PERCENTBAR}%</td>
            <td class="centerall width60">
                <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_PERCENTBAR}%;"></div>
                </div>
            </td>
        </tr>
        <!-- END: ROW -->
    </table>
    <!-- END: YEAR_OR_MONTH -->

    <!-- BEGIN: DEFAULT -->
    <h3>{PHP.L.hits_byyear}:</h3>
    <table class="cells">
        <!-- BEGIN: ROW_YEAR -->
        <tr>
            <td class="width10"><a href="{ADMIN_HITS_ROW_YEAR_URL}">{ADMIN_HITS_ROW_YEAR}</a></td>
            <td class="textcenter width20">{PHP.L.Hits}: {ADMIN_HITS_ROW_YEAR_HITS}</td>
            <td class="textcenter width10">{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%</td>
            <td class="centerall width60">
                <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_YEAR_PERCENTBAR}%;"></div>
                </div>
            </td>
        </tr>
        <!-- END: ROW_YEAR -->
    </table>
    <h3>{PHP.L.hits_bymonth}:</h3>
    <table class="cells">
        <!-- BEGIN: ROW_MONTH -->
        <tr>
            <td class="width10"><a href="{ADMIN_HITS_ROW_MONTH_URL}">{ADMIN_HITS_ROW_MONTH}</a></td>
            <td class="textcenter width20">{PHP.L.Hits}: {ADMIN_HITS_ROW_MONTH_HITS}</td>
            <td class="textcenter width10">{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%</td>
            <td class="centerall width60">
                <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_MONTH_PERCENTBAR}%;"></div>
                </div>
            </td>
        </tr>
        <!-- END: ROW_MONTH -->
    </table>
    <h3>{PHP.L.hits_byweek}:</h3>
    <table class="cells">
        <!-- BEGIN: ROW_WEEK -->
        <tr>
            <td class="width10">{ADMIN_HITS_ROW_WEEK}</td>
            <td class="textcenter width20">{PHP.L.Hits}: {ADMIN_HITS_ROW_WEEK_HITS}</td>
            <td class="textcenter width10">{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%</td>
            <td class="centerall width60">
                <div class="bar_back">
                    <div class="bar_front" style="width:{ADMIN_HITS_ROW_WEEK_PERCENTBAR}%;"></div>
                </div>
            </td>
        </tr>
        <!-- END: ROW_WEEK -->
    </table>
    <!-- END: DEFAULT -->
</div>
