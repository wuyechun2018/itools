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
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        myChart.showLoading();
        $.get(CONTEXTPATH+'/getChartXML', function (xml) {
            myChart.hideLoading();

            var graph = echarts.dataTool.gexf.parse(xml);
            var categories = [];
            for (var i = 0; i < 2; i++) {
                categories[i] = {
                    name: '类目' + i
                    /* ,itemStyle:{
                    	normal: {
                            color: 'red'
                        }
                    } */
                };
            } 
            
            categories[0]={name:'人基本信息'};
            categories[1]={name:'房屋信息'};
            
            
            
            var num=0;
            graph.nodes.forEach(function (node) {
                //node.itemStyle = null;
                /* node.itemStyle = {normal: {
                    color: 'rgb(1,1,1)'
                }}; */
                node.itemStyle =node.itemStyle;
                node.value = node.symbolSize;
                node.symbolSize /= 1.5;
                node.label = {
                    normal: {
                        show: node.symbolSize > 30
                    }
                };
                node.category = node.attributes.modularity_class;
                //categories[num]={name: node.attributes.modularity_class};
                //num++;
            });
            
            
            graph.links.forEach(function (link) {
            	link.itemStyle =link.itemStyle;
            });
            
            
            
            option = {
                title: {
                    text: '数据脉络图',
                    subtext: '数据总线迁移图',
                    top: 'top',
                    left: 'center'
                },
                tooltip: {},
                legend: [{
                    // selectedMode: 'single',
                    data: categories.map(function (a) {
                        return a.name;
                    })
                    ,
                    top: 'bottom',
                    left: 'center'
                    //right: 'center'
                }],
                animationDuration: 1500,
                animationEasingUpdate: 'quinticInOut',
                series : [
                    {
                        name: 'Les Miserables',
                        //类型
                        type: 'graph',
                        layout: 'none',
                        edgeSymbol: ['none', 'arrow'],
                        data: graph.nodes,
                        links: graph.links,
                        categories: categories,
                        roam: true,
                        label: {
                            normal: {
                                position: 'inside',
                                formatter: '{b}'
                            }
                        },
                        lineStyle: {
                            normal: {
                                color: 'source',
                                curveness: 0.3
                            }
                        }
                    }
                ]
            };

            myChart.setOption(option);
        }, 'xml');
        
       // $.get(URL,data,function(data,status,xhr),dataType)
       //dataType 规定预期的服务器响应的数据类型

        
        
    </script>
	
	
	
</body>
</html>