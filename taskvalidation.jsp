<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	
</head>
<body>

	<%

		
		String prname=request.getParameter("prname");
		String plcode=request.getParameter("plcode");
		String task=request.getParameter("task");
		String gtype=request.getParameter("gtype");
		String doc=request.getParameter("doc");
		
	%>

	<%
		if(task.equals("1"))
		{
		%>
		<jsp:forward page="documentallot.jsp" />
		<%
		}
		if(task.equals("2"))
		{
		%>
		<jsp:forward page="documentallot1.jsp" />
		<%
		}
	%>
</body>
</html>

		
		