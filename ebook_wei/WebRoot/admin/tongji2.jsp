<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<html>
	<head>

		<title>bar</title>


		<script type="text/javascript" src="tongjijs/jquery.js"></script>
		<script type="text/javascript" src="tongjijs/jquery.jqplot.js"></script>
		<link rel="stylesheet" href="css/jquery.jqplot.min.css" type="text/css"></link>
		
		<!-- zhuzhuang -->
		<script type="text/javascript" src="tongjijs/plugins/jqplot.categoryAxisRenderer.js"></script>
		<script type="text/javascript" src="tongjijs/plugins/jqplot.barRenderer.js"></script>
		
		<!-- bingzhuang -->
				<script type="text/javascript"
			src="tongjijs/plugins/jqplot.pieRenderer.min.js"></script>
		<script type="text/javascript" src="tongjijs/plugins/jqplot.donutRenderer.min.js"></script>
		
	
		
	</head>

	<script type="text/javascript">
	$(document).ready(function(){
        $.jqplot.config.enablePlugins = true;
        var s1 = [2, 6, 7, 10];        var ticks = ['a', 'b', 'c', 'd'];
        plot1 = $.jqplot('1', [s1], {
        animate: !$.jqplot.use_excanvas,
        seriesDefaults:{
        renderer:$.jqplot.BarRenderer,
        pointLabels: { show: true }
        },
        axes: {
        xaxis: {
        renderer: $.jqplot.CategoryAxisRenderer,
        ticks: ticks
        }
        },
        highlighter: { show: false }
        }); 
        $('#1').bind('jqplotDataClick',
        function (ev, seriesIndex, pointIndex, data) {
        $('#info1').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
        }
        );
  }); 
//bingzhuang
$(document).ready(
		function() {
			var data = [ [ 'Heavy Industry', 12 ], [ 'Retail', 9 ],
					[ 'Light Industry', 14 ], [ 'Out of home', 16 ],
					[ 'Commuting', 7 ], [ 'Orientation', 9 ] ];
			var plot1 = jQuery.jqplot('2', [ data ], {
				seriesDefaults : {
					// Make this a pie chart.
					renderer : jQuery.jqplot.PieRenderer,
					rendererOptions : {
						// Put data labels on the pie slices.
					// By default, labels show the percentage of the slice.
					showDataLabels : true
				}
				},
				legend : {
					show : true,
					location : 'e'
				}
			});
		});
		
		

</script>
	<body>
		<div id="1" style="margin-top:20px; margin-left:20px; width:300px; height:300px;float:left;"></div>
		<div id="2" style="margin-top:20px; margin-left:20px; width:300px; height:300px;float:left;"></div>
		
	</body>
</html>
