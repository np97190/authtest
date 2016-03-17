<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Index</title>
</head>
<body>

<%
	String login = request.getRemoteUser();
	if(StringUtils.isEmpty(login)){
		response.sendRedirect("login.jsp");
	}
%>
<h1>hi <%=login %></h1>
<br/>
<iframe src="http://192.168.221.148:8085/jbpm-console/kie-wb.html?standalone=true&path=git://master@restrepo/restproj/src/main/resources/restou/restproj/firstprocess.bpmn2" height="500" width="800"></iframe>
</body>
</html>