<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
<title> PROJECT CHANGE MANAGEMENT</title>
<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: 16px}
.style11 {color: #99CCFF}
-->
    </style>
</head>
<body>
<%! 
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
<%
		String prcode=request.getParameter("prcode");
		String code=request.getParameter("code");
		String a="";
		String b="";
		String c="IP";
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
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
      <tr valign="top">
        <td>
          <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
            <tr>
              <td height="108" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE </font> 
            </center></td>
            </tr>
          </table>
          
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="457"><a href="plmenu.jsp"><font size="2" color="#FFFFFF">BACK</font></a></td>
          <td width="536"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
        </tr>
      </table>
    </table>
    <center><h1 class="style10 style11"> CURRENT DOCUMENTS DETAILS</h1>
      <hr>
  <%
		String str="select * from status where plcode='"+code+"' and status ='IP' or status = 'DE' or status = 'NC'";
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
</center>
	<table width="100%" border="1">
			<tr>
			<td><b>Emp Code</b></td>
                        <td><b>Doc Name</b></td>
                        <td><b>Group Leader</b></td>
			<td><b>Open Date</b></td>
			<td><b>Close Date</b></td>
		        <td><b>Status</b></td>
			<td><b>Ver By</b></td>
			<td><b>Percentage</b></td>
			<td><b>Pro Name</b></td>
			<td><b>Pro Code</b></td>
			</tr>
			<%
			
			while(rs.next())
			{
			%>
			
			<tr>
			    <td><%= rs.getString(1)%></td>
			
			    <td><%= rs.getString(2)%></td>
			
			    <td><%= rs.getString(3)%></td>
			
			    <td><%= rs.getString(4)%></td>
			
			    <td><%= rs.getString(5)%></td>
			
			    
    <td><font color="blue"><%= rs.getString(6)%></font></td>
			
			    <td><%= rs.getString(7)%></td>
				
			    <td><%= rs.getString(8)%></td>

			    <td><%= rs.getString(9)%></td>
			    <td><%= rs.getString(10)%></td>
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
<hr>
<br>
<font color="red">NC------NOT COMPLETED |</font> <font color="green">C-------COMPLETED 
|</font> <font color="violet">IP------IN PROGRESS |</font> <font color="blue">DE------DATE 
EXTENDED</font> 
</body>
</html>		