<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <%@ include file="../../inc.jsp"%>
<title>Welcome</title>
</head>
<body>
<h2>Welcome to itools!</h2>

<div>
<div><a href="${ctx }/getJsonData">Get Json Data(获取Json数据)</a></div>
<div><a href="${ctx }/getListJson">Get Json Data List(获取List-Json数据)</a></div>
<div><a href="${ctx }/views/easyui/index">GO TO EasyUi(演示EasyUI)</a></div>
<div><a href="${ctx }/views/echarts/index">GO TO ECHARTS(演示ECHARTS)</a></div>
<div><a href="${ctx }/downloadExcel">Export Excel use Poi(演示POI导出Excel)</a></div>
<div><a href="${ctx }/views/jquery/index">Jquery(演示Jquery特效)</a></div>
</div>
</body>
</html>