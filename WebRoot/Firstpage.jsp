<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Firstpage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <center>
  <body background="Imgsrc/123.jpg">
    <input id="Button5" type="button" value="�� ¼ �� ��" 
    onclick="window.location.href='MyJsp.jsp'" /><br>
    <input id="Button4" type="button" value="������ѯ����" 
    onclick="window.location.href='tablecheck.jsp'" /><br>
    <input id="Button1" type="button" value="�����޸Ľ���" 
    onclick="window.location.href='allcheck.jsp'" /><br>
    <input id="Button2" type="button" value="����Ԥ������" 
    onclick="window.location.href='index.jsp'" /><br>
    <input id="Button6" type="button" value="�ɼ�Ԥ������" 
    onclick="window.location.href='indexgrade.jsp'" /><br>
    <input id="Button3" type="button" value="�ɼ��༭����" 
    onclick="window.location.href='managergrade.jsp'" />
  </body>
  </center>
</html>
