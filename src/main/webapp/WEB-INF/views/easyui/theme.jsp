<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../../inc.jsp"%>
<title>EASYUI-THEME</title>
</head>
<body>

<div class="easyui-tabs" fit="true" plain="true" border="false">
	<div title="Setting">
		<table id="pg-setting" class="easyui-propertygrid" fit="true" border="false"
				toolbar="#tb-setting" showGroup="true">
		</table>
	</div>
	<div title="CSS" style="overflow:hidden">
		<textarea id="ta-css" class="ta-box"></textarea>
	</div>
	</div>
<div id="tb-setting" style="padding:2px 5px;background:transparent">
	<table>
		<tr>
			<td>Select Theme:</td>
			<td>
				<select id="cbo-theme" class="easyui-combobox" name="theme" style="width:100px" data-options="
						url:'${ctx}/resources/js/lib/jquery-easyui-1.5/data/theme.json',
						method:'get',
						valueField:'name',
						textField:'value',
						panelHeight:'auto',
						editable:false,
						onChange:onChange">
				</select>
			</td>
		</tr>
	</table>
</div>

<script>
	$(function(){
		$('#pg-setting').propertygrid({
			url: '${ctx}/resources/js/lib/jquery-easyui-1.5/data/setting.json',
			method:'get',
			//url:'http://www.jeasyui.com/themebuilder/get_setting.php',
			columns: [[  
				{field:'name',title:'Property Name',width:100,sortable:true},  
				{field:'value',title:'Property Value',width:100,resizable:false,
					formatter:function(value){
						var s = '<div>';
						s += '<div style="float:right;width:18px;height:18px;background:'+value+'">&nbsp;</div>';
						s += value;
						s += '<div style="clear:both"></div>';
						s += '</div>';
						return s;
					}
				}  
			]],
			onClickRow: function(index, row){
				var ed = $(this).propertygrid('getEditor', {index:index,field:'value'});
				if (ed){
					$(ed.target).unbind('.pg').bind('keydown.pg', function(e){
						if (e.keyCode == 13){	// enter
							$(document).triggerHandler('mousedown');
						}
					});
				}
			},
			onLoadSuccess: function(){
				previewTheme();
			},
			onAfterEdit: function(){
				previewTheme();
			}
		});
	});
	function onChange(theme){
		$('#pg-setting').propertygrid('load', {theme: theme});
	}
	function previewTheme(){
		var pg = $('#pg-setting');
		var params = {theme: $('#cbo-theme').combobox('getValue')};
		var rows = pg.propertygrid('getRows');
		for(var i=0; i<rows.length; i++){
			var row = rows[i];
			params[row.name+':'+row.group] = row.value;
		}
		$.post('get_theme.php', params, function(data){
		//$.get('${ctx}/resources/js/lib/jquery-easyui-1.5/data/theme.json', params, function(data){
			var dd = data.split('----\n');
			$('#ta-css').val(dd[0]);
			$('#ta-less').val(dd[1]);
			var s = $('#content').find('style:first');
			var ss = ['<style type="text/css">'];
			ss.push(dd[0]);
			ss.push('</style>');
			$(ss.join('\n')).insertAfter(s);
			s.remove();
			$('#dlink').remove();
		});
	}
</script>
<style type="text/css">
	.ic-table td{
		text-align:right;
	}
	.ic-table input{
		width:60px;
	}
	.ta-box{
		width:100%;
		height:100%;
		border:0;
		resize:none;
		-webkit-box-sizing:border-box;
		-moz-box-sizing:border-box;
		-ms-box-sizing:border-box;
		-o-box-sizing:border-box;
		box-sizing:border-box;
	}
</style>
</body>
