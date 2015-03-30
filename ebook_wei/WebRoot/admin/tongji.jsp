<%@ page language="java" import="java.util.*,com.wei.model.*,com.wei.util.*,java.util.*" pageEncoding="utf-8"%>
   	<%
                  	String date=request.getParameter("date");
                  	if(date==null || date==""){
                  	date=DateTools.getDateTime();
                  	}
                  	
                  	DButil db=new DButil();
                  	String sql="select count(*) from ebook_order";
                  	Map<String,Object> countall=(Map)db.getOneRow(sql);
                  	int allcount=Integer.parseInt(countall.get("COUNT(*)").toString());
                  	
                  	
                  	String sql1="select count(*) from ebook_order where SALE_DATE='"+date+"'";
                  	Map<String,Object> count=(Map)db.getOneRow(sql1);
                  	int onecount=Integer.parseInt(count.get("COUNT(*)").toString());	
                  	
                  	 %>
<html>
	<head>

		<title>簿客 | 统计</title>
		<script language="javascript" type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>

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

//bingzhuang
$(document).ready(
		function() {
			var data = [ [ '<%=date%>订单数', <%=onecount%> ],[ '历史订单数', <%=allcount-onecount%> ] ];
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
		
                  
               
					<script type="text/javascript">
					function date(){
						var d=document.getElementById("date").value;
						location="tongji.jsp?date="+d;
					}
					</script>
				
			某日订单占所有订单比例：<input id="date" class="Wdate" type="text" onClick="WdatePicker()"><input type="button" onclick="date()" value="统计"/><br>
		<div id="2" style="margin-top:20px; margin-left:20px; width:300px; height:300px;float:left;"></div>
		
	</body>
</html>
