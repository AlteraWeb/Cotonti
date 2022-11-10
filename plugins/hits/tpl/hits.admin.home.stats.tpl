<!-- BEGIN: MAIN -->
    <div class="card">
        <div class="filter">
            <a href="{ADMIN_HOME_CONFIG_URL}" class="icon">
                <i class="bi bi-gear-fill"></i>
            </a>
        </div>
        <div class="card-body">
            <h5 class="card-title">{HITS_STAT_HEADER}</h5>
            <div id="hitsChart" style="min-height: 365px;"></div>
            <div class="d-flex justify-content-center mt-4">
                <a href="{ADMIN_HOME_MORE_HITS_URL}" class="btn btn-primary btn-sm me-3">{PHP.L.ReadMore}</a>
            </div>
            <script>
                    document.addEventListener("DOMContentLoaded", () => {
                        const series = {
                            "views": {ADMIN_HOME_VIEWS},
                            "dates": {ADMIN_HOME_DATES}
                        }
                        new ApexCharts(document.querySelector("#hitsChart"), {
                            series: [{
                                name: "{__('Hits')}",
                                data: series.views
                            }],
                            chart: {
                                type: 'area',
                                height: 350,
                                zoom: {
                                    enabled: false
                                }
                            },
                            dataLabels: {
                                enabled: false
                            },
                            stroke: {
                                curve: 'straight'
                            },
                            labels: series.dates,
                            xaxis: {
                                type: 'datetime',
                            },
                            yaxis: {
                                opposite: true
                            },
                            legend: {
                                horizontalAlign: 'left'
                            }
                        }).render();
                    });
                </script>
        </div>
    </div>
<!-- END: MAIN -->
