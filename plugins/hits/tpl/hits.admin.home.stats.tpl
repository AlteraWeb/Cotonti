<!-- BEGIN: MAIN -->
<div class="card">
    <div class="filter">
        <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
        <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
            <li><a class="dropdown-item" href="{ADMIN_HOME_CONFIG_URL}">{__('Settings')}</a></li>
            <li><a class="dropdown-item" href="{ADMIN_HOME_MORE_HITS_URL}">{__('ReadMore')}</a></li>
        </ul>
    </div>
    <div class="card-body">
        <h5 class="card-title">{HITS_STAT_HEADER}</h5>
        <div id="hitsChart" style="min-height: 350px;"></div>
        <script>
            try {
                document.addEventListener("DOMContentLoaded", () => {
                    new ApexCharts(document.querySelector("#hitsChart"), {
                        series: [{
                            name: '{__('Views')}',
                            data: {ADMIN_HOME_VIEWS}.reverse(),
                        }],
                        chart: {
                            height: 350,
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
                            categories: {ADMIN_HOME_DATES}.reverse()
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
    </div>
</div>
<!-- END: MAIN -->
