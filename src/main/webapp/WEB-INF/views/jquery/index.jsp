<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Jquery</title>
<%@ include file="../../../inc.jsp"%>
<script type="text/javascript"
	src="${ctx}/resources/js/lib/jquery/jquery-1.9.1.js"></script>
	
<style type="text/css">
a{
text-decoration: none;
}

td{
border-left: 1px solid black ;
border-top: 1px solid black ;
width:150px;
}


</style>	
	
</head>
<body>
	<script type="text/javascript">
		$(function() {
			/*  $(document).mousemove(function (e) {
			$("#show").css({"position":"absolute","top":e.pageY,"left":e.pageX+10,"border": "1px solid green"}).width(100).height(100);
			 }); */

			// $(document).mousemove(function (e){
			$(".td_color_green").mousedown(function(e) {
				$("#show").show();
				$("#show").css({
					"position" : "absolute",
					"top" : e.pageY,
					"left" : e.pageX + 10,
					"border" : "1px solid green",
					"background-color" : "yellow"
				}).width(70).height(30);
			});

			$("p").mouseleave(function(e) {
				//$("#show").hide();
			});
			
			$("#show").click(function(e) {
				$("#show").hide();
			});

		})

		//跳转到查询框
		function gotoSearch() {
			$("#show").hide();
			var offsetTop = document.getElementById("searchBox").offsetTop;
			window.scrollTo(300, offsetTop);
			$("#searchText").focus();
		}
	</script>

	<div id="show" hidden="hidden">
		<a href="javascript:void(0)" onclick="gotoSearch()">快速搜索</a>
	</div>

	<br>
	<br>
	
	<div id="searchBox" style="float:right;">
		<input id="searchText" type="text"><input type="button" value="搜索"> 
	</div>




	



	<table class="statistics">
		<thead>
			<tr class="">
				<td style="width: 40px;">序号</td>
				<td style="width: 130px;">单位名称</td>
				<td style="width: 40px;">序号</td>
				<td style="width: 190px;">数据项</td>
				<td style="width: 90px;">交换量</td>
				<td style="width: 90px;">数据量</td>
			</tr>
		</thead>
		<tbody>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
				<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			<tr id="id1111">
				<td class="td_color_green" id="id1116" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1117" style="background: #FFFFFF">2953</td>
				<td class="td_color_green" id="id1118" style="background: #FFFFFF">2016-07-08</td>
				<td class="td_color_green" id="id1119" style="background: #FFFFFF">前置机</td>
				<td class="td_color_green" id="id11111" style="background: #FFFFFF">平台数据</td>
				<td class="td_color_green" id="id11112" style="background: #FFFFFF">全量</td>
			</tr>
			
			
			
		</tbody>
	</table>




</body>
</html>