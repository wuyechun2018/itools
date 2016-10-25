<html>
<head>
<title></title>
 <%@ include file="./inc.jsp"%>
</head>
<body>
<h2>itools</h2>
<script src="${ctx }/resources/js/lib/require-2.3.2.js" data-main="${ctx }/resources/js/apps/index.js"></script>

<table>
<tr>
<td><input type="text" id="username" name="username" /></td>
</tr>


<tr>
<td><input  type="password"  id="password" name="password" /></td>
</tr>

<tr>
<td>

<input type="button" value="登录" onclick="btnClick()" />
</td>

</tr>

</table>

</body>
</html>
<%-- 当本项目成为一个SpringMVC项目后,启动项目,首页面不再是该页面,而应该到IndexController中指定 --%>
