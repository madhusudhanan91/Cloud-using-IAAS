<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>

</head>

<body>		
<%
		Blob b = (Blob)session.getAttribute("fileBlob");
		if(b != null)
		{
			String fileName = "file";
			byte[] ba = b.getBytes(1, (int)b.length());
			response.setContentType("application/msword");
			response.setHeader("Content-Disposition","attachment; filename=\""+fileName+"\"");
			OutputStream os = response.getOutputStream();
			os.write(ba);
			os.close();
			ba = null;
			//session.removeAttribute("document1");
		}
		else
		{
			response.sendRedirect("uploadview.jsp");
		}
%>

</body>
</html>