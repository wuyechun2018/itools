<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../../../inc.jsp"%>
<link rel="stylesheet" href="${ctx}/resources/css/comm.css">
<style type="text/css">
.zc{
color:green;
/* text-align: center; */
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
	color:#FFB90F;
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
background-color:#FFF8DC;
margin-right:10px;
float:right;
}

.title-span{
font-size:14px;
font-weight: bold;

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

<%-- <script type="text/javascript" src="${ctx}/resources/js/lib/require-2.3.2.js"></script>
 --%>

</head>
<body class="img-bg">

	

	<div style="margin:5px;padding: 4px;" class="panel panel-default">
		<span class="title-span" style="margin-left:10px;">源数据库：</span>
		<select id="example-getting-started" >
			<option value="0">请选择</option>
		    <option value="1">市公安局</option>
		    <option value="2">汇集库</option>
		    <option value="3">网格平台</option>
		    <option value="4">规整库</option>
		</select>
		<span>~</span>
		<span class="title-span">目标数据库：</span>
		<select id="example-getting-end" >
			<option value="0">请选择</option>
		    <option value="1">市公安局</option>
		    <option value="2">汇集库</option>
		    <option value="3">网格平台</option>
		    <option value="4">规整库</option>
		</select>
		
		<span class="title-span" style="margin-left: 20px;">数据专题：</span>
		<select id="sel-zt" >
			<option value="0">请选择</option>
		    <option value="1">人房数据迁移</option>
		    <option value="2">电子监察数据迁移</option>
		</select>
		
	</div>
	
	
	
	
	<script type="text/javascript">
		$(function(){
			/*  $('#example-getting-started').multiselect({
				 numberDisplayed: 10,
				 nonSelectedText:'请选择数据库',
				 allSelectedText:'已选择'
			 });
			 
			 $('#example-getting-end').multiselect({
				 numberDisplayed: 10,
				 nonSelectedText:'请选择数据库',
				 allSelectedText:'已选择'
			 });
			 
			 $('#sel-zt').multiselect({
				 numberDisplayed: 10,
				 nonSelectedText:'请选择数据库',
				 allSelectedText:'已选择'
			 }); */
			 
			 
			 
			 
			 
			 /* require.config(requireConfig);
			 define(['zrender'
			     ],
			     function(zrender) {
				 var zr = zrender.init(document.getElementById('main'));
				 
			 }) */
			 
			 
			 
			
		})
	
	
	
	</script>
	
	
	 

 	<!-- 为 ECharts 准备一个具备大小（宽高）的 DOM -->
    <div class="chart" id="main" style="width: 900px;height:560px;margin-top: 30px;"></div>
    
    
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
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        myChart.showLoading();
        $.get(CONTEXTPATH+'/getChartXML', function (xml) {
            myChart.hideLoading();
            var graph = echarts.dataTool.gexf.parse(xml);
            option = {
                title: {
                    text: '数据脉络图',
                    //subtext: '数据总线迁移图',
                    top: 'top',
                    left: 'center',
                    padding: [0, 10],
                    textStyle:{
                    	color:'#fff',
                    	fontSize:30
                    	
                    	
                    }
                },
                tooltip: {
                	show:true
                	//,formatter: '{a}-{b}-{c}'
                	
                },
               
               /*  xAxis: {
                    type: 'value',
                    name: 'x',
                    splitLine: {show: false},
                    data: ['1', '2', '3', '4', '5', '6', '7', '8', '9']
                } ,
                yAxis: {
                    type: 'value',
                    name: 'y'
                } , */
                legend: [{
                    selectedMode: 'single',
                    data: ['人房数据同步']
                    ,
                    top: 'bottom',
                    left: 'center'
                }],
                animationDuration: 1500,
                animationEasingUpdate: 'quinticInOut',
                series : [
                         /*  {
                              name: '3的指数',
                              type: 'line',
                              data: [1, 2, 3, 4, 5]
                          }, */
                    {
                        name: '数据中心',
                        //类型
                        type: 'graph',
                        layout: 'none',
                        hoverAnimation:false,
                        //'circle', 'rect', 'roundRect', 'triangle', 'diamond', 'pin', 'arrow'
                        symbol:'circle',
                        edgeSymbol: ['none', 'arrow'],
                        data: [
                               {
                            	   category   :0,
                            	   id :"0",
                            	   name:"汇集库",
                            	   //节点大小
                            	   symbol:'circle',
                            	   symbolSize:120,
                            	   value : 150,
                            	   x :0,
                            	   y : 0,
                            	   itemStyle: {
                                       normal: {
                                    	   //节点颜色
                                    	  color: "rgb(235,81,72)"
                                       }
                                   },
                                   label: {
                                       normal: {
                                           show: true
                                       }
                                   },
                                   tooltip:{
                                	   show: true,
                                	   formatter:'IP:172.16.7.116:1521  Oracle'
                                   }
                            	   
                               },{
                            	   category   :0,
                            	   id :"1",
                            	   name:"规整库",
                            	   symbolSize:100,
                            	   value : 150,
                            	   x :0,
                            	   y : -10,
                            	   itemStyle: {
                                       normal: {
                                    	  color: "rgb(116,159,131)"
                                       }
                                   },
                                   label: {
                                       normal: {
                                           show: true
                                       }
                                   },
                                   tooltip:{
                                	   show: true,
                                	   formatter:'IP:172.16.7.82:1521  Oracle'
                                   }
                            	   
                               },{
                            	   category   :0,
                            	   id :"2",
                            	   name:"网格平台",
                            	   symbolSize:100,
                            	   value : 150,
                            	   x :10,
                            	   y : 0,
                            	   itemStyle: {
                                       normal: {
                                    	  color: "rgb(156,109,10)"
                                       }
                                   },
                                   label: {
                                       normal: {
                                           show: true
                                       }
                                   },
                                   tooltip:{
                                	   show: true,
                                	   formatter:'IP:172.16.7.6:1521  Oracle'
                                   }
                            	   
                               },{
                            	   category:0,
                            	   id :"3",
                            	   name:"公安前置机",
                            	   symbol:'roundRect',
                            	   symbolSize:80,
                            	   value : 150,
                            	   x :-10,
                            	   y : 0,
                            	   itemStyle: {
                                       normal: {
                                    	  color: "#4F94CD"
                                       }
                                   },
                                   label: {
                                       normal: {
                                           show: true
                                       }
                                   },
                                   tooltip:{
                                	   show: true,
                                	   formatter:'IP:59.203.153.116  Oracle'
                                   }
                            	   
                               }
                               ],
                        links: [{
                        		id:'1',
                        		name:'',
                        		value:'正常',
                        		source: 3,
                                target: 0,
                                symbolSize: [5, 20],
                                label: {
                                     normal: {
                                         show: true,
                                         formatter: function(params){
                                        	 return "1 类数据";
                                         },
                                         textStyle:{
                                        	 color:'#FFF',
                                        	 fontFamily:'Microsoft Yahei',
                                        	 fontWeight:'normal'
                                         }
                                     }
                                 },
                                 tooltip:{
                              	   show: true,
                              	   formatter:function(params){
                              		   return "正常：8 类; 异常：0 类";
                              	   }
                                 },
                                 effect: {
                                     show: true,
                                     period: 6,
                                     trailLength: 0.7,
                                     color: '#fff',
                                     symbolSize: 3
                                 },
                                 lineStyle: {
                                     normal: {
                                         //线的粗细
                                    	 width: 2,
                                         color:'#76EE00',
                                         type:'solid',
                                         //边的曲度，支持从 0 到 1 的值，值越大曲度越大
                                         curveness: 0,
                                         opacity:0.5
                                     }
                                 }
                        		},{
                            		id:'2',
                            		name:'',
                            		value:'异常',
                            		source: 0,
                                    target: 1,
                                    symbolSize: [5, 20],
                                    label: {
                                         normal: {
                                             show: true,
                                             formatter: function(params){
                                            	 return "8 类数据";
                                             },
                                             textStyle:{
                                            	 color:'#FFF',
                                            	 fontFamily:'Microsoft Yahei',
                                            	 fontWeight:'normal'
                                             }
                                         }
                                     },
                                     effect: {
                                         show: true,
                                         period: 6,
                                         trailLength: 0.7,
                                         color: '#fff',
                                         symbolSize: 3
                                     },
                                     lineStyle: {
                                         normal: {
                                             width: 5,
                                             type:'solid',
                                             opacity:0.8,
                                             color:'#FFA500',
                                             //边的曲度，支持从 0 到 1 的值，值越大曲度越大
                                             curveness: 0.2,
                                             textStyle:{
                                            	 color:'#FFD700',
                                            	 fontFamily:'Microsoft Yahei',
                                            	 fontWeight:'normal'
                                             }
                                         }
                                     }
                            		},{
                                		id:'3',
                                		name:'',
                                		value:'正常',
                                		source: 1,
                                        target: 0,
                                        symbolSize: [5, 20],
                                        label: {
                                             normal: {
                                                 show: true,
                                                 formatter: function(params){
                                                	 return "8 类数据";
                                                 },
                                                 textStyle:{
                                                	 color:'#FFF',
                                                	 fontFamily:'Microsoft Yahei',
                                                	 fontWeight:'normal'
                                                 }
                                             }
                                         },
                                         effect: {
                                             show: true,
                                             period: 6,
                                             trailLength: 0.7,
                                             color: '#fff',
                                             symbolSize: 3
                                         },
                                         lineStyle: {
                                             normal: {
                                                 width: 5,
                                                 color:'#76EE00',
                                                 //边的曲度，支持从 0 到 1 的值，值越大曲度越大
                                                 curveness: 0.2
                                             }
                                         }
                                		},{
                                    		id:'5',
                                    		name:'',
                                    		value:'正常',
                                    		source: 1,
                                            target: 0,
                                            symbolSize: [5, 20],
                                            label: {
                                                 normal: {
                                                     show: true,
                                                     formatter: function(params){
                                                    	 return "6 类数据";
                                                     },
                                                     textStyle:{
                                                    	 color:'#FFF',
                                                    	 fontFamily:'Microsoft Yahei',
                                                    	 fontWeight:'normal'
                                                     }
                                                 }
                                             },
                                             effect: {
                                                 show: true,
                                                 period: 6,
                                                 trailLength: 0.7,
                                                 color: '#fff',
                                                 symbolSize: 3
                                             },
                                             lineStyle: {
                                                 normal: {
                                                     width: 2,
                                                     color:'#76EE00',
                                                     //边的曲度，支持从 0 到 1 的值，值越大曲度越大
                                                     curveness: 0.2
                                                 }
                                             }
                                    		},{
                                        		id:'5',
                                        		name:'',
                                        		value:'正常',
                                        		source: 0,
                                                target: 2,
                                                symbolSize: [5, 20],
                                                label: {
                                                     normal: {
                                                         show: true,
                                                         formatter: function(params){
                                                        	 return "6 类数据";
                                                         },
                                                         textStyle:{
                                                        	 color:'#FFF',
                                                        	 fontFamily:'Microsoft Yahei',
                                                        	 fontWeight:'normal'
                                                         }
                                                     }
                                                 },
                                                 effect: {
                                                     show: true,
                                                     period: 6,
                                                     trailLength: 0.7,
                                                     color: '#fff',
                                                     symbolSize: 3
                                                 },
                                                 lineStyle: {
                                                     normal: {
                                                         width: 3,
                                                         color:'#76EE00',
                                                         //边的曲度，支持从 0 到 1 的值，值越大曲度越大
                                                         curveness: 0.1
                                                     }
                                                 }
                                        		},{
                                            		id:'6',
                                            		name:'',
                                            		value:'正常',
                                            		source: 2,
                                                    target: 0,
                                                    symbolSize: [5, 20],
                                                    label: {
                                                         normal: {
                                                             show: true,
                                                             formatter: function(params){
                                                            	 return "11  类数据";
                                                             },
                                                             textStyle:{
                                                            	 color:'#FFF',
                                                            	 fontFamily:'Microsoft Yahei',
                                                            	 fontWeight:'normal'
                                                             }
                                                         }
                                                     },
                                                     effect: {
                                                         show: true,
                                                         period: 6,
                                                         trailLength: 0.7,
                                                         color: '#fff',
                                                         symbolSize: 3
                                                     },
                                                     lineStyle: {
                                                         normal: {
                                                             width: 6,
                                                             color:'#76EE00',
                                                             //边的曲度，支持从 0 到 1 的值，值越大曲度越大
                                                             curveness:  0.1
                                                         }
                                                     }
                                            		}],
                        categories: [{name:'人基本信息'},{name:'房屋信息'}],
                        roam: true,
                        draggable:true,
                        focusNodeAdjacency:false,
                        label: {
                            normal: {
                                position: 'inside',
                                formatter: '{b}'
                            }
                        }
                    }
                ]
            };
			debugger;
            myChart.setOption(option);
          
            /*  myChart.getZr().addShape({
                shape : 'circle',
                style : {
                    x : 100, 
                    y : 100, 
                    r : 50, 
                    color : 'rgba(220, 20, 60, 0.8)'
                }
            });  */
             
            
            /* myChart.getZr().animate(target, options) */
            
            
            var gaHtml=
            	"<div style=\"margin:1px;\">\n" +
            	"  <div class=\"panel panel-default \" id=\"box\" >\n" + 
            	"    <table class=\"table table-bordered table-striped table-condensed\">\n" + 
            	"      <thead>\n" + 
            	"        <tr><th style=\".col-xs-4\">序号</th><th>数据类别</th><th>状态</th></tr>\n" + 
            	"      </thead>\n" + 
            	"      <tbody>\n" + 
            	"        <tr><td>1</td><td style=\"text-center\">常住人口基本信息表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"      </tbody>\n" + 
            	"    </table>\n" + 
            	"  </div>\n" + 
            	"    </div>";
            
            
            var hjHtml=
            	"<div style=\"margin:1px;\">\n" +
            	"  <div class=\"panel panel-default \" id=\"box\" >\n" + 
            	"    <table class=\"table table-bordered table-striped table-condensed\">\n" + 
            	"      <thead>\n" + 
            	"        <tr><th style=\".col-xs-4\">序号</th><th>数据类别</th><th>状态</th></tr>\n" + 
            	"      </thead>\n" + 
            	"      <tbody>\n" + 
            	"        <tr><td>1</td><td style=\"text-center\">常住人口基本信息表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"        <tr><td>2</td><td>实有人口表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"        <tr><td>3</td><td>房屋表</td><td class=\"yc\">异常</td></tr>\n" + 
            	"        <tr><td>4</td><td>楼栋表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"        <tr><td>5</td><td>户信息表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"        <tr><td>6</td><td>楼层表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"        <tr><td>7</td><td>居住关系表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"        <tr><td>8</td><td>人户居住关系历史表</td><td class=\"zc\">正常</td></tr>\n" + 
            	"      </tbody>\n" + 
            	"    </table>\n" + 
            	"  </div>\n" + 
            	"    </div>";
            	
            	var gzHtml=
                	"<div style=\"margin:1px;\">\n" +
                	"  <div class=\"panel panel-default \" id=\"box\" >\n" + 
                	"    <table class=\"table table-bordered table-striped table-condensed\">\n" + 
                	"      <thead>\n" + 
                	"        <tr><th style=\".col-xs-4\">序号</th><th>数据类别</th><th>状态</th></tr>\n" + 
                	"      </thead>\n" + 
                	"      <tbody>\n" + 
                	"        <tr><td>1</td><td style=\"text-center\">常住人口基本信息表</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>2</td><td>实有人口表</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>3</td><td>户籍表（一站通）</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>4</td><td>房屋表（一站通）</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>5</td><td>实有人口表（一站通）</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>6</td><td>网格实有人口问题数据表</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>7</td><td>公安街道信息字典</td><td class=\"zc\">正常</td></tr>\n" + 
                	"        <tr><td>8</td><td>公安行政区划字典</td><td class=\"zc\">正常</td></tr>\n" + 
                	"      </tbody>\n" + 
                	"    </table>\n" + 
                	"  </div>\n" + 
                	"    </div>";	
            	

            
            
            
            myChart.on('click', function(params) {
            	if(params.dataType=="node"){
	            	//alert("type:"+params.dataType+" category:"+params.data.category+" id:"+params.data.id+"  name:"+params.name);
            		if(params.data.id==0){
            			bootbox.dialog({
    	            		title:'详细信息',
    	            	    message: '汇集库对接44个单位,数据来源464个,数据总量12亿1103万条',
    	            	    buttons: {
    	            	        confirm: {
    	            	            label: '关闭',
    	            	            className: 'btn-success'
    	            	        }
    	            	    }
    	            	})
            		}
	            	
            	
            	}else{
            		
            		//alert($('#example-getting-started').val());
	            	//alert("type:"+params.dataType+" id:"+params.data.id+"  name:"+params.name);
	            	//alert($('#box').html());
	            	var tableHtml;
	            	if(params.data.id==1){
	            		tableHtml=gaHtml;
	            	}else if(params.data.id==2){
	            		tableHtml=hjHtml;
	            	}else if(params.data.id==3){
	            		tableHtml=gzHtml;
	            	}
	            	
	            	
	            	bootbox.dialog({
	            		title:'详细信息',
	            	    message: tableHtml,
	            	    buttons: {
	            	        confirm: {
	            	            label: '关闭',
	            	            className: 'btn-success'
	            	        }
	            	    }
	            	})
	            	
            	}
        	});
            
            
            
            
            
            
        }, 'xml');
        
    </script>
    
    
   
	    
    
    
</body>
</html>