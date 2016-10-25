<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../../../inc.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Theme Builder - jQuery EasyUI</title>
<link rel="stylesheet" href="${ctx}/resources/js/lib/jquery-easyui-1.5/data/kube.css" type="text/css" />
<link rel="stylesheet" href="${ctx}/resources/js/lib/jquery-easyui-1.5/data/main.css" type="text/css" />
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<script type="text/javascript" src="${ctx}/resources/js/lib/jquery/jquery-1.9.1.min.js"></script>
</head>





<body>
	<div id="header" class="group wrap header">
		<div class="content">
			<div class="navigation-toggle" data-tools="navigation-toggle" data-target="#navbar-1">
				<span>EasyUI</span>
			</div>
			<div id="elogo" class="navbar navbar-left">
				<ul>
					<li><a href="/index.php"><img src="${ctx}/resources/js/lib/jquery-easyui-1.5/data/logo2.png" alt="jQuery EasyUI" /></a></li>
				</ul>
			</div>
			<div id="navbar-1" class="navbar navbar-right">
				<ul>
					<li><a href="/index.php">Home</a></li>
					<li><a href="/demo/main/index.php">Demo</a></li>
					<li><a href="/tutorial/index.php">Tutorial</a></li>
					<li><a href="/documentation/index.php">Documentation</a></li>
					<li><a href="/download/index.php">Download</a></li>
					<li><a href="/extension/index.php">Extension</a></li>
					<li><a href="/contact.php">Contact</a></li>
					<li><a href="/forum/index.php">Forum</a></li>
				</ul>
			</div>
			<div style="clear: both"></div>
		</div>
		<script type="text/javascript">
			function setNav() {
				var demosubmenu = $('#demo-submenu');
				if (demosubmenu.length) {
					if ($(window).width() < 450) {
						demosubmenu.find('a:last').hide();
					} else {
						demosubmenu.find('a:last').show();
					}
				}
				if ($(window).width() < 767) {
					$('.navigation-toggle').each(function() {
						$(this).show();
						var target = $(this).attr('data-target');
						$(target).hide();
						setDemoNav();
					});
				} else {
					$('.navigation-toggle').each(function() {
						$(this).hide();
						var target = $(this).attr('data-target');
						$(target).show();
					});
				}
			}
			function setDemoNav() {
				$('.navigation-toggle').each(function() {
					var target = $(this).attr('data-target');
					if (target == '#navbar-demo') {
						if ($(target).is(':visible')) {
							$(this).css('margin-bottom', 0);
						} else {
							$(this).css('margin-bottom', '2.3em');
						}
					}
				});
			}
			$(function() {
				setNav();
				$(window).bind('resize', function() {
					setNav();
				});
				$('.navigation-toggle').bind('click', function() {
					var target = $(this).attr('data-target');
					$(target).toggle();
					setDemoNav();
				});
			})
		</script>
	</div>
	<div id="mainwrap">
		<div id="content">

			<link id="dlink" rel="stylesheet" type="text/css" href="${ctx}/resources/js/lib/jquery-easyui-1.5/themes/default/easyui.css">
			<link rel="stylesheet" type="text/css" href="${ctx}/resources/js/lib/jquery-easyui-1.5/themes/icon.css">
			<link rel="stylesheet" type="text/css" href="${ctx }/resources/js/lib/jquery-easyui-1.5/data/demo1.css">
			<script type="text/javascript" src="${ctx}/resources/js/lib/jquery/jquery-1.9.1.min.js"></script>
			<script type="text/javascript" src="${ctx}/resources/js/lib/jquery-easyui-1.5/jquery.easyui.min.js"></script>
			<style></style>
			<style>
			.header {
				min-width: 1024px;
			}
			
			body {
				min-width: 1024px;
			}
			</style>


			<div id="main-layout" class="easyui-layout"
				style="width: 100%; height: 500px">
				<div region="west" title="Theme Builder" split="true" style="width: 300px" href="${ctx }/views/easyui/theme"></div>
				<div region="center" title="Preview" href="${ctx }/views/easyui/preview" style="padding: 5px"></div>
			</div>

			<script type="text/javascript">
				$(function() {
					if ($(window).width() < 767) {
						$('#main-layout').layout('collapse', 'west');
					}
				})
			</script>

			﻿
		</div>
	</div>
	<div id="footer">
		<div class="units-row text-centered">Copyright © 2010-2016
			www.jeasyui.com</div>
	</div>
</body>
</html>