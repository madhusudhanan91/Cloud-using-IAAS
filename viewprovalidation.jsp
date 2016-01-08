<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	<title>
		View Validation
	</title>
</head>
<style type="text/css">
<!--
.style1 {
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	color: #330000;
}
.style4 {color: #330000; font-weight: bold; }
.style9 {font-size: 24px}
-->
</style>

<body>
<%! 
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
<%
		String prname=request.getParameter("prcode");
		String code=request.getParameter("code");
		String a="";
		String b="";
		String c="C";
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
<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr> 
    <td height="100%" > <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
      </center></td>
  </tr>
</table>
<table width="100%" height="20" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
    <td width="50%" height="20"><a href="glmenu.html"><font size="2" color="#FFFFFF">BACK</font></a></td>
    <td width="50%"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
  </tr>
</table>
<p>&nbsp;</p>
<center><h1> COMPLETED DOCUMENTS DETAILS</h1></center>
	<%
		String str="select * from status where glcode='"+code+"' and status='C'";
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
			<table width="100%" border="1">
			<tr>
			<td><b>Emp Code</b></td>
                        <td><b>Doc Name</b></td>
                        <td><b>Open Date</b></td>
			<td><b>Close Date</b></td>
		        <td><b>Status</b></td>
			<td><b>Ver By</b></td>
                        <td><b>Percentage</b></td>
			<td><b>Pro Name</b></td>
			<td><b>Pro Code</b></td>
			<td><b>Pro Leader</b></td>
			</tr>
			
			<%
			
			while(rs.next())
			{
			%>
			
			
			<tr>
			    <td><%= rs.getString(1)%></td>
			
			    <td><%= rs.getString(2)%></td>
			
			    <td><%= rs.getString(4)%></td>
			
			    <td><%= rs.getString(5)%></td>
			
			    <td><%= rs.getString(6)%></td>
			
			    <td><%= rs.getString(7)%></td>
			
			    <td><%= rs.getString(8)%></td>
				
			    <td><%= rs.getString(9)%></td>
			    <td><%= rs.getString(10)%></td>

			    <td><%= rs.getString(11)%></td>
			</tr>

			<%
			}
			%>
			</table>
			<%
			}
		catch(Exception f)
		{
		out.println("Finding error");
		}
	%>
<br>
<br>
<br>
<hr>
<br>
<font color="red">NC------NOT COMPLETED |</font> <font color="green">C-------COMPLETED 
|</font> <font color="violet">IP------IN PROGRESS |</font> <font color="blue">DE------DATE 
EXTENDED</font> 
</body>
</html>		
