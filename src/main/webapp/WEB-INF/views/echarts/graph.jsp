<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../../../inc.jsp"%>
<style type="text/css">
.zc{
color:green;
}

.yc{
color:red;
}

th td{
font-family: 'Microsoft YaHei';
background-color:#C7C7C7;
}

.info{
	font-family:'Microsoft YaHei';
	margin: 0px 5px;
}

.info-title{
	margin:0px 0px 8px 5px;
	color:#FFF;
	font-size:16px;
	font-weight: bold;
}

.ystd{
	vertical-align:middle;
}

.chart{

float:left;


}

.info{
background-color:#000;
margin-right:10px;
float:right;
}

.title-span{
font-size:14px;
font-weight: bold;

}

.info td {
background-color: black;
color:#FFF;
}

.info th {
background-color: black;
color:#FFF;
}

.jd{
color:#991129;
}

.zt{
color:#3c763d;
}


</style>



<script type="text/javascript" src="${ctx}/resources/js/lib/echarts-3.2.3/echarts.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/lib/jquery/jquery-1.9.1.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/lib/echarts-3.2.3/extension/dataTool.js"></script>


<!-- 新 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="${ctx}/resources/js/lib/bootstrap-3.3.0/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="${ctx}/resources/js/lib/bootstrap-3.3.0/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${ctx}/resources/js/lib/bootbox.min.js"></script>

<link rel="stylesheet" href="${ctx}/resources/js/lib/bootstrap-multiselect/css/bootstrap-multiselect.css">
<script type="text/javascript" src="${ctx}/resources/js/lib/bootstrap-multiselect/js/bootstrap-multiselect.js"></script>

<script type="text/javascript" src="${ctx}/resources/js/lib/require-2.3.2.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/lib/zrender/js/zrender.js"></script>



<script type="text/javascript">
	$(function(){
		$(".zt").hide();
		$("#disp-type-select").change(function(){
			var selVal=$("#disp-type-select").val();
			if(selVal==1){
				$(".jd").show();
				$(".zt").hide();
			}else{
				$(".zt").show();
				$(".jd").hide();
			}
		});
	})
</script>



</head>
<body class="img-bg">

	

	<div style="margin:5px;padding: 8px;" class="panel panel-default">
	
		<span class="title-span" style="margin-left:10px;">展示类型：</span>
		<select id="disp-type-select" >
		    <option value="1">节点</option>
		    <option value="2">专题</option>
		</select>
	
		<span  class="title-span jd" style="margin-left:10px;">源数据库：</span>
		<select id="example-getting-started" class="jd">
			<option value="0">请选择</option>
		    <option value="1">市公安局</option>
		    <option value="2">汇集库</option>
		    <option value="3">网格平台</option>
		    <option value="4">规整库</option>
		</select>
		<span class="jd">~</span>
		<span class="title-span jd">目标数据库：</span>
		<select id="example-getting-end" class="jd">
			<option value="0">请选择</option>
		    <option value="1">市公安局</option>
		    <option value="2">汇集库</option>
		    <option value="3">网格平台</option>
		    <option value="4">规整库</option>
		</select>
		
		<span class="title-span zt" style="margin-left: 20px;">数据专题：</span>
		<select id="sel-zt " class="zt">
			<option value="0">请选择</option>
		    <option value="1">人房数据迁移</option>
		    <option value="2">电子监察数据迁移</option>
		</select>
		
	</div>
	

 	<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div class="chart" id="main" style="width: 900px;height:560px;margin-top: 30px;"></div>
    <div class="chart" id="main1" style="width: 900px;height:560px;margin-top: 30px;"></div>
    
    <div class="info">
    	<div class="info-title">图例说明：</div>
    	 <div style="margin:1px 0px 0px 10px;width:400px;">
       <div class="panel panel-default " id="box" >
				<table class="table table-bordered  table-condensed">
					<thead>
						<tr>
							<th>元素</th>
							<th>变量</th>
							<th>说明</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="ystd" rowspan="6">节点(数据库)</td>
							<td style="">大小</td>
							<td style="">数据类别总数</td>
						</tr>
						<tr>
							<td>形状</td>
							<td style="">前置机、数据库、专题库</td>
						</tr>
						<tr>
							<td>颜色</td>
							<td style="">部门</td>
						</tr>
						<tr>
							<td>文字</td>
							<td style="">数据库名称</td>
						</tr>
						
						<tr>
							<td style="color:red;">悬浮事件</td>
							<td style="">显示IP地址、数据库类型</td>
						</tr>
						
						<tr>
							<td style="color:red;">点击事件</td>
							<td style="">显示数据库描述信息</td>
						</tr>
						
						<tr>
							<td rowspan="6">连线(数据量)</td>
							<td style="">粗细</td>
							<td style="">交换流程数量</td>
						</tr>
						<tr>
							<td>颜色</td>
							<td style="">数据同步状态</td>
						</tr>
						<tr>
							<td>方向</td>
							<td style="">数据的流向</td>
						</tr>
						<tr>
							<td>虚实</td>
							<td style="">增量、全量</td>
						</tr>
						
						<tr>
							<td style="color:red;">悬浮事件</td>
							<td style="">显示正常、异常</td>
						</tr>
						
						<tr>
							<td style="color:red;">点击事件</td>
							<td style="">显示交换数据明细</td>
						</tr>
						
					</tbody>
				</table>
			</div> 
        </div>
    
    
    </div>
    
    
    
     <script type="text/javascript">
       
            require(
	    [	"zrender",
			'zrender/shape/Circle',
			'zrender/shape/Line',
			'zrender/shape/Rectangle',
			"zrender/tool/color"],
	    function(zrender,CircleShape,Line,Rectangle) {
	        var zr = zrender.init(document.getElementById('main1'));
	        
	        var c = new CircleShape({
				zlevel: 2,
				style: {
					x: '200',
					y: '20',
					r: 22,
					text:  'c1',
					textColor:'rgb(0,179,242)',
					textPosition: 'inside',
					shadowColor: 'rgb(52,179,242)',
					color:  'red',
					brushType: 'fill'
				}
			});
	        
	        debugger;
	        
	        
	        var c2 = new Rectangle({
	            style: {
	                x: 300,
	                y: 20,
	                width: 50,
	                height: 50,
	                text:  'c2',
					textColor:'rgb(0,179,242)',
					textPosition: 'inside',
	                color:  'yellow',
	                radius: 20
	            }
	        }); 
	        
	        
	      var c3 = new Rectangle({
	            style: {
	                x: 400,
	                y: 20,
	                width: 50,
	                height: 50,
	                text:  'c3',
					textColor:'rgb(0,179,242)',
					textPosition: 'inside',
	                color:  'yellow',
	                radius: 20
	            }
	        }); 
	        
	        var l1 = new Line({
	            style: {
	                xStart: 210,
	                yStart: 20,
	                xEnd: 330,
	                yEnd: 30,
	                strokeColor: '#0F0',
	                lineWidth: 10
	            }
	        });
	        zr.addShape(l1);
	        zr.addShape(c);
	        zr.addShape(c2);
	        zr.addShape(c3);
	        
	      /*  zr.animate(c3.id)
	        .when(1000, {
	            position : [200, 20]
	        })
	        .start();  */
	       
	       zr.animate(c3.id)
	       .when(1000, { position : [210, 20] })
	       .when(2000, { position : [330, 30] })
	       .start();
	        
	        
	       // zr.animate(c3.id, "style", c1, false);
	        
	        
	        zr.render();
	        
	        
	    }
	);
 </script>
    
    
   
	    
    
    
</body>
</html>