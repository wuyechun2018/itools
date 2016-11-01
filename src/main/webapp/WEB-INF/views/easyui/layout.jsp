<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="../../../inc.jsp"%>
<title>EasyUI-Layout</title>


<link rel="stylesheet" type="text/css" href="${ctx}/resources/js/lib/jquery-easyui-1.5/themes/icon.css">

<script type="text/javascript" src="${ctx}/resources/js/lib/jquery-easyui-1.5/jquery.min.js"></script>
<script type="text/javascript" src="${ctx}/resources/js/lib/jquery-easyui-1.5/jquery.easyui.min.js"></script>

<style type="text/css">
html {
	
}

body {
	margin: 2px;
	height: 100%;
}

.layout_north_title {
	float:left;
	color: #fff;
	font-size: 36px;
	font-weight:bold;
	margin-top:15px;
	margin-left:30px;
}

.layout_north_theme{
	color: #fff;
	margin-top:40px;
	margin-right:5px;
	float:right;
}

.layout_north_menu{
	color: #fff;
	float:left;
	margin-left: 250px;
	margin-top:18px;
	font-size:14px;

}

.layout_north_menu ul{
list-style:none;
}


.layout_north_menu ul li{
float: left;
margin-left:30px;
}


</style>

<script>
		
</script>




</head>
<body id="content">
	<link rel="stylesheet" type="text/css" href="${ctx}/resources/js/lib/jquery-easyui-1.5/themes/metro/easyui.css">
	
    <div id="layout" class="easyui-layout" style="width:100%;height:630px;">
        <div class="layout_north" data-options="region:'north'" style="height:80px">
        	<div>
        		<div class="layout_north_title">EasyUI</div>
        		<div class="layout_north_menu">
        			<ul>
        				<li>首页</li>
        				<li>示例</li>
        				<li>文档</li>
        				<li>下载</li>
        				<li>扩展</li>
        				<li>联系</li>
        			</ul>
        		</div>
        		<div class="layout_north_theme">
        			切换主题 &nbsp;<select id="cb-theme" style="width:120px;height:25px"></select>
        		</div>
        	</div>
        </div>
        <div class="layout_south" data-options="region:'south',split:true" style="height:50px;">
        	
        	<div style="width:100%;text-align: center;">
        		<div style="color:#fff;margin: 6px;">Copyright © 2010-2016 www.jeasyui.com</div>
        	
        	</div>
        	
        </div>
        <div data-options="region:'east',split:true,collapsed:true" title="East" style="width:200px;"></div>
        <div data-options="region:'west',split:true" title="West" style="width:220px;">

			<div class="easyui-accordion" style="width: 210px; height:98%;">
				<div title="TreeMenu" data-options="iconCls:'icon-search'" style="padding: 10px;">
					<ul class="easyui-tree" id="menuTree">
						<li><span>Foods</span>
							<ul>
								<li><span>Fruits</span>
									<ul>
										<li>apple</li>
										<li>orange</li>
									</ul></li>
								<li><span>Vegetables</span>
									<ul>
										<li>tomato</li>
										<li>carrot</li>
										<li>cabbage</li>
										<li>potato</li>
										<li>lettuce</li>
									</ul></li>
							</ul></li>
					</ul>
				</div>
				
				<div title="About" data-options="iconCls:'icon-ok'"
					style="overflow: auto; padding: 10px;">
					<h3 style="color: #0099FF;">Accordion for jQuery</h3>
					<p>Accordion is a part of easyui framework for jQuery. It lets
						you define your accordion component on web page more easily.</p>
				</div>
				<div title="Help" data-options="iconCls:'icon-help'" style="padding: 10px;">
					<p>The accordion allows you to provide multiple panels and
						display one or more at a time. Each panel has built-in support for
						expanding and collapsing. Clicking on a panel header to expand or
						collapse that panel body. The panel content can be loaded via ajax
						by specifying a 'href' property. Users can define a panel to be
						selected. If it is not specified, then the first panel is taken by
						default.</p>
				</div>
				
			</div>



		</div>
       <!--  <div data-options="region:'center',title:'Main Title',iconCls:'icon-ok'"> -->
		 <div data-options="region:'center'">
			<div id="tt" class="easyui-tabs" style="width: 100%; height: 100%;">
				<div title="欢迎">
					<table id="dg" title="用户列表" class="easyui-datagrid"
						style="width: 98%; height: 90%" url="get_users.php"
						toolbar="#toolbar" pagination="true" rownumbers="true"
						fitColumns="true" singleSelect="true">
						<thead>
							<tr>
								<th field="firstname" width="50">First Name</th>
								<th field="lastname" width="50">Last Name</th>
								<th field="phone" width="50">Phone</th>
								<th field="email" width="50">Email</th>
							</tr>
						</thead>
					</table>
					<div id="toolbar">
						<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">创建</a>
						<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">编辑</a> 
						<a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">删除</a>
					</div>
				</div>
			</div>
		</div>
    </div>
    
    
    <script type="text/javascript">
    	$(".layout_north").css("background-color","RGB(45,62,80)");
    	$(".layout_south").css("background-color","RGB(24,36,72)");
    	
    	//动态添加Tab标签
    	function addTab(title, url){
			if ($('#tt').tabs('exists', title)){
				$('#tt').tabs('select', title);
			} else {
				var content = '<iframe scrolling="auto" frameborder="0"  src="'+url+'" style="width:100%;height:100%;"></iframe>';
				$('#tt').tabs('add',{
					title:title,
					content:content,
					closable:true
				});
			}
		}
    	
    	//主题
    	var themes = [
    	  			{value:'metro',text:'Metro',group:'Base'},
    	  			{value:'default',text:'Default',group:'Base'},
    	  			{value:'gray',text:'Gray',group:'Base'},
    	  			{value:'material',text:'Material',group:'Base'},
    	  			{value:'bootstrap',text:'Bootstrap',group:'Base'},
    	  			{value:'black',text:'Black',group:'Base'}
    	  		];
    	
    	//主题切换
    	function onChangeTheme(theme){
    		var link = $('#content').find('link:first');
    		link.attr('href', CONTEXTPATH+'/resources/js/lib/jquery-easyui-1.5/themes/'+theme+'/easyui.css');
    	}
    	
    	
    	//初始化
    	$(function(){
    		
    		//树点击事件
    		$('#menuTree').tree({
        		onClick: function(node){
        			addTab(node.text, "http://www.baidu.com");
        		}
        	});
    		
    		//主题下拉框
    		$('#cb-theme').combobox({
    			groupField:'group',
    			data: themes,
    			editable:false,
    			panelHeight:'auto',
    			onChange:onChangeTheme,
    			onLoadSuccess:function(){
    				$(this).combobox('setValue', 'metro');
    			}
    		});
    	})
    	
    	var url;
    	
    	//新建
        function newUser(){
            $('#dlg').dialog('open').dialog('center').dialog('setTitle','New User');
            $('#fm').form('clear');
            url = 'save_user.php';
        }
        
        //编辑
        function editUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $('#dlg').dialog('open').dialog('center').dialog('setTitle','Edit User');
                $('#fm').form('load',row);
                url = 'update_user.php?id='+row.id;
            }
        }
        
        //保存用户
        function saveUser(){
            $('#fm').form('submit',{
                url: url,
                onSubmit: function(){
                    return $(this).form('validate');
                },
                success: function(result){
                    var result = eval('('+result+')');
                    if (result.errorMsg){
                        $.messager.show({
                            title: 'Error',
                            msg: result.errorMsg
                        });
                    } else {
                        $('#dlg').dialog('close');        // close the dialog
                        $('#dg').datagrid('reload');    // reload the user data
                    }
                }
            });
        }
        
        //删除用户
        function destroyUser(){
            var row = $('#dg').datagrid('getSelected');
            if (row){
                $.messager.confirm('Confirm','Are you sure you want to destroy this user?',function(r){
                    if (r){
                        $.post('destroy_user.php',{id:row.id},function(result){
                            if (result.success){
                                $('#dg').datagrid('reload');    // reload the user data
                            } else {
                                $.messager.show({    // show error message
                                    title: 'Error',
                                    msg: result.errorMsg
                                });
                            }
                        },'json');
                    }
                });
            }
        }
    	
    	
    	
    	
    </script>
    
    
    <div id="dlg" class="easyui-dialog" style="width:400px"
            closed="true" buttons="#dlg-buttons">
        <form id="fm" method="post" novalidate style="margin:0;padding:20px 50px">
            <div style="margin-bottom:20px;font-size:14px;border-bottom:1px solid #ccc">User Information</div>
            <div style="margin-bottom:10px">
                <input name="firstname" class="easyui-textbox" required="true" label="First Name:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="lastname" class="easyui-textbox" required="true" label="Last Name:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="phone" class="easyui-textbox" required="true" label="Phone:" style="width:100%">
            </div>
            <div style="margin-bottom:10px">
                <input name="email" class="easyui-textbox" required="true" validType="email" label="Email:" style="width:100%">
            </div>
        </form>
    </div>
    <div id="dlg-buttons">
        <a href="javascript:void(0)" class="easyui-linkbutton c6" iconCls="icon-ok" onclick="saveUser()" style="width:90px">Save</a>
        <a href="javascript:void(0)" class="easyui-linkbutton" iconCls="icon-cancel" onclick="javascript:$('#dlg').dialog('close')" style="width:90px">Cancel</a>
    </div>
    
 
</body>
</body>
</html>