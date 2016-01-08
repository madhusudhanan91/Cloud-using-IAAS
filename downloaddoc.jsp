<%@ page import="java.sql.*, javax.sql.*, java.util.HashSet, java.util.ArrayList, java.util.Iterator, java.io.*"%>
<html>
<head>

<script language="JavaScript">

</script>
</head>

<%
	session.removeAttribute("fileBlob");
	String name = request.getParameter("name");
	Blob file = null;
	
	Connection con = null;
	PreparedStatement ps1 = null;
	ResultSet rs1 = null;
	String sql1 = "select filename from filestored where name = ?";
	try
	{  Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		
		ps1 = con.prepareStatement(sql1);
		ps1.setString(1,name);
		rs1 = ps1.executeQuery();
		rs1.next();
		file = rs1.getBlob(1);
	}
	catch(Exception e)
	{
		out.println("Exception :"+e);
	}
	finally
	{
		if(con != null)
			con.close();
		if(ps1 != null)
			ps1.close();
		if(rs1 != null)
			rs1.close();
	}
	session.setAttribute("fileBlob",file);
%>
<jsp:forward page="uploadeddocviews.jsp"/>
</body>
</html>