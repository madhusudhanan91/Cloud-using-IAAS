<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	
    <style type="text/css">
<!--
.style9 {font-size: 24px}
-->
    </style>
</head>
<body>

	<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
      <tr>
        <td height="108" >
          <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
      </center></td>
      </tr>
    </table>
	<table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
      <tr align="center">
        <td width="50%"><a href="hrmenu.jsp"><font size="2" color="#FFFFFF">BACK</font></a></td>
        <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">SIGN OUT </font></a></td>
      </tr>
    </table>
	<p>&nbsp;</p>
	<p>&nbsp; </p>
<p>&nbsp;</p>
	<p>
	  <%!
		PreparedStatement st1;
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
	
	  <%

		
		String prcode=request.getParameter("prcode");
		String prname=request.getParameter("prname");
	%>

	  <%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		}
		catch(Exception e)
		{
		out.println(e);
		}
	%>
	  <%

		String str5="delete from addnew where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str5);
		%>
		
		
		<%

		}
		catch(Exception k)
		{
		out.println(k);
		}
	%>
	<% 
		String str6="delete from com_project where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str6);
		%>
		Deleted Successfully...
	<%

		}
		catch(Exception k)
		{
		out.println(k);
		}
	%>
    </p>
	<p><br>
      <a href="hrmenu.jsp">Click here</a>
  
              </p>
</body>
</html>

		
		
