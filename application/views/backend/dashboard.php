
   <div class="row">
    <div class="col l3 m6 s12">
        <a href='<?php echo site_url('site/viewcompany');?>'>
            <div class="card blue darken-4">
                <div class="card-content white-text text-center">
                    <i class="large material-icons block" style="font-size: 4rem;">business</i>
                    <span class="card-title"> Total Companies <br><span style="font-size: -webkit-xxx-large;"><b><?php echo $company;?></b></span></span>
                </div>
            </div>
        </a>
    </div>

    <div class="col l3 m6 s12">
        <a href='<?php echo site_url('site/viewpackageexpiring');?>'>
            <div class="card blue darken-4">
                <div class="card-content white-text text-center">
                    <i class="large material-icons block" style="font-size: 4rem;">error</i>
                    <span class="card-title"> Packages Expiring <br><span style="font-size: -webkit-xxx-large;"><b><?php echo $packageexpire;?></b></span></span>
                </div>
            </div>
        </a>
    </div>

    <div class="col l3 m6 s12">
        <a href='<?php echo site_url('site/viewblockcompanies');?>'>
            <div class="card blue darken-4">
                <div class="card-content white-text text-center">
                    <i class="large material-icons block" style="font-size: 4rem;">not_interested</i>
                    <span class="card-title">Blocked Companies<br><span style="font-size: -webkit-xxx-large;"><b><?php echo $blockedcompanies;?></b></span></span>
                </div>
            </div>
        </a>
    </div>

</div>
<script src="https://code.highcharts.com/highcharts.js"></script>
<!--<script src="https://code.highcharts.com/modules/exporting.js"></script>-->
<div class="row">
    <div class="m6 s12">
        <div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>

        <script>
            $(function () {
                var sectorCount = [];
                var sectors = [];
                var package = [];
                $(function () {
                    $(document).ready(function () {
                        var new_base_url = "<?php echo site_url(); ?>";
                        $.getJSON(new_base_url + '/site/getcompanysector', {}, function (data) {
                            _.each(data, function (n) {
                                var hold = {};
                                hold.name = n.name;
                                hold.y = parseInt(n.sectorcount.sector);
                                sectors.push(hold);
                                $('select').material_select();
                                createGraph();
                            });
                            console.log(sectors);
                        });
                        $.getJSON(new_base_url + '/site/getcompanypackage', {}, function (data) {
                            _.each(data, function (n) {
                                var hold = {};
                                hold.name = n.name;
                                hold.y = parseInt(n.packagecount.package);
                                package.push(hold);
                                $('select').material_select();
                                createPie();
                            });
                            console.log(package);
                        });
                    });

                    function createGraph() {
                        $('#container').highcharts({
                            credits:{
                                enabled:false
                            },
                             colors: ['#e91e63', '#cddc39', '#ff5722 ', '#ffeb3b ', '#f44336 ', '#6a1b9a', '#90a4ae', '#FFF263', '#76ff03'],
                            chart: {
                                plotBackgroundColor: null,
                                plotBorderWidth: null,
                                plotShadow: false,
                                type: 'pie'
                            },
                            title: {
                                text: 'Company Sectors'
                            },
                            tooltip: {
                                pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                            },
                            plotOptions: {
                                pie: {
                                    allowPointSelect: true,
                                    cursor: 'pointer',
                                    dataLabels: {
                                        enabled: true,
                                        format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                                        style: {
                                            color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                                        }
                                    }
                                }
                            },
                            series: [{
                                name: 'Sector',
                                colorByPoint: true,
                                data: sectors
                        }]
                        });
                    }
                });
                    function createPie() {
    $('#container1').highcharts({
          credits:{
            enabled:false
                            },
        chart: {
            plotBackgroundColor: null,
            plotBorderWidth: null,
            plotShadow: false,
            type: 'pie'
        },
         colors: ['#e91e63', '#cddc39', '#ff5722 ', '#ffeb3b ', '#f44336 ', '#6a1b9a', '#90a4ae', '#FFF263', '#76ff03'],
        title: {
            text: 'Company Packages'
        },
        tooltip: {
            pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
        },
        plotOptions: {
            pie: {
                allowPointSelect: true,
                cursor: 'pointer',
                dataLabels: {
                    enabled: true,
                    format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                    style: {
                        color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                    }
                }
            }
        },
        series: [{
            name: 'Packages',
            colorByPoint: true,
            data: package
        }]
    });
       }
                
                // the button action
                $('#button').click(function () {
                    var chart = $('#container').highcharts(),
                        selectedPoints = chart.getSelectedPoints();

                    if (chart.lbl) {
                        chart.lbl.destroy();
                    }
                    chart.lbl = chart.renderer.label('You selected ' + selectedPoints.length + ' points', 10, 10)
                        .attr({
                            padding: 10,
                            r: 5,
                            fill: Highcharts.getOptions().colors[1],
                            zIndex: 5
                        })
                        .css({
                            color: 'white'
                        })
                        .add();
                });
            });


            // PACKAGES GRAPH//////////////////////////////////////////////////////////////////////////////////////////////////////////////
        </script>
    </div>
    </div>
    <div class="row">
    <div class="m6 s12">
    <div id="container1" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
<script>
$(function () {
   
});
</script>
        </div>
</div>
