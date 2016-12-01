<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <%@ include file="../../inc.jsp"%>
<title>Welcome</title>
<style type="text/css">
body{
background:#f7f8fa;
}

div{
margin-top:5px;
}

a{
text-decoration: none;
}

a:hover{
text-decoration: underline;
}

.link-type{
font-size:16px;
font-weight: bold;
margin-top: 18px;
color:rgb(45,62,80);

}


</style>

</head>
<body>
<h2>Welcome to itools!</h2>

<div>
<div class="link-type">JSON</div>
<div>1、<a href="${ctx }/getJsonData">获取Json数据(Get Json Data)</a></div>
<div>2、<a href="${ctx }/getListJson">获取List-Json数据(Get Json Data List)</a></div>
<div class="link-type">EasyUI</div>
<div>3、<a href="${ctx }/views/easyui/index">演示EasyUI基本示例(GO TO EasyUi)</a></div>
<div>4、<a href="${ctx }/views/easyui/layout">演示EasyUI整体框架</a></div>
<div class="link-type">Echarts3</div>
<div>1、<a href="${ctx }/views/echarts/index">演示ECHARTS入门示例(GO TO ECHARTS)</a></div>
<div>2、<a href="${ctx }/views/echarts/relation">演示ECHARTS关系图</a></div>
<div class="link-type">POI</div>
<div>1、<a href="${ctx }/downloadExcel">演示POI导出Excel(Export Excel use Poi)</a></div>
<div class="link-type">Jquery</div>
<div>1、<a href="${ctx }/views/jquery/index">演示Jquery特效(Jquery)</a></div>
<div class="link-type">文件上传、下载</div>
<div>1、<a href="${ctx }/views/spring/upload">文件上传(File Upload IN Spring)</a></div>
<div class="link-type">PDF在线</div>
<div>1、<a href="${ctx }/views/pdf/index">PDF在线查看(pdf.js)</a></div>
</div>
</body>
</html>