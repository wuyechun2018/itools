<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../../../inc.jsp"%>
<script type="text/javascript" src="${ctx}/resources/js/lib/echarts-3.2.3/echarts.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/lib/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/lib/echarts-3.2.3/extension/dataTool.js"></script>
</head>
<body>
 	<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div id="main" style="width: 900px;height:600px;"></div>
    
     <script type="text/javascript">
     $.get('${ctx}/resources/js/lib/echarts-3.2.3/china.json', function (chinaJson) {
    	    echarts.registerMap('china', chinaJson);
    	    var chart = echarts.init(document.getElementById('main'));
    	    chart.setOption({
    	        series: [{
    	            type: 'map',
    	            map: 'china'
    	        }]
    	    });
    	});
    </script>
	
	
	
</body>
</html>