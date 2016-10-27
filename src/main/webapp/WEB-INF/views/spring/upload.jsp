<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Upload File In Spring</title>
<%@ include file="../../../inc.jsp"%>
<script type="text/javascript" src="${ctx}/resources/js/lib/jquery/jquery-1.9.1.js"></script>
	
<style type="text/css">
td{
border: 1px solid black ;
width:150px;
}
</style>	
	
</head>
<body>

<h3>文件上传</h3>
<form action="${ctx}/uploadFile" method="post"  enctype="multipart/form-data">
<table>
<tr>
<td>文件</td>
<td><input type="file" name="uploadFile"></td>
</tr>
<tr>
<td><input type="submit" value="提交"></td>
<td><input type="reset" value="取消"></td>
</tr>
</table>
</form>



<h3>多文件上传</h3>
<form action="${ctx}/uploadMutiFile" method="post"  enctype="multipart/form-data">
<table>
<tr>
<td>文件1</td>
<td><input type="file" name="uploadFiles"></td>
</tr>
<tr>
<td>文件2</td>
<td><input type="file" name="uploadFiles"></td>
</tr>
<tr>
<td>文件3</td>
<td><input type="file" name="uploadFiles"></td>
</tr>
<tr>
<td><input type="submit" value="提交"></td>
<td><input type="reset" value="取消"></td>
</tr>
</table>
</form>

	
	




</body>
</html>