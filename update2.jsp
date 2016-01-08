<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: 14px}
.style11 {color: #0000FF}
.style12 {
	color: #330000;
	font-weight: bold;
}
.st2 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 18px;
	color: #CC00FF;
}
-->
</style>
</head>
<body bgcolor="#FFFFFF">

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
		String c="COMPLETED";
		
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
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font>  
            </center></td>
            </tr>
          </table>
          <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
            <tr align="center">
          		<td width="100%"><a href="plmenu.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></td>
            </tr>
          </table>
    </table>
    <center>
  <h1 class="style10 style11"> DOCUMENTS DETAILS</h1>
      <hr>
      
  <p class="style10">
    <%
		String str="select * from status"; // where plcode='"+code+"'and status='"+c+"'";
		try
			{
			int i=0;
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
  </p>
</center>
			<table width="100%" border="1">
			<tr>
			<td><span class="style12">Emp Code</span></td>
            <td><span class="style12">Doc Name</span></td>
            <td><span class="style12">Group Leader</span></td>
			<td><span class="style12">Open Date</span></td>
			<td><span class="style12">Close Date</span></td>
		    <td><span class="style12">Status</span></td>
			<td><span class="style12">Ver By</span></td>
			<td><span class="style12">Percentage</span></td>
			<td><span class="style12">Pro Name</span></td>
			<td><span class="style12">Pro Code</span></td>
			</tr>
			<%
			
			while(rs.next())
			{
			i=i+1;
			%>
			<tr>
			    <td><%= i%><%= rs.getString(1)%></td>
			    <td><%= rs.getString(2)%></td>
			    <td><%= rs.getString(3)%></td>
			    <td><%= rs.getString(4)%></td>
			    <td><%= rs.getString(5)%></td>
			    <td><%= rs.getString(6)%></td>
			    <td><%= rs.getString(7)%></td>
			    <td><%= rs.getString(8)%></td>
			    <td><%= rs.getString(9)%></td>
			    <td><%= rs.getString(10)%></td>
			</tr>
			<%	}%>
			</table>
			
<%
			}
		catch(Exception f)	{	out.println("Finding error");	}

		String strr = "select * from status where pro_code in('"+prcode+"') and per_work not in('100')";
		System.out.println("select * from status where pro_code in('"+prcode+"') and per_work not in('100')");
		try {
			rs =st.executeQuery(strr);
			if(rs.next()) {%>
<p><span class="st2"><font color="#6600FF">UNCOMPLETED PROJECT</font></span><font color="red"> 
  </font> 
  <% 	}

			else {
			String str1="update com_project set status='"+c+"' where pro_code='"+prcode+"'";
				st=con.createStatement();
				st.executeUpdate(str1);%>
  <span class="st2"><font color="#6600FF">COMPLETED PROJECT</font></span><font color="red"></font></p>
<hr>
<p> <font color="red">NC------NOT COMPLETED |</font> <font color="green">C-------COMPLETED 
  |</font> <font color="violet">IP------IN PROGRESS |</font> <font color="blue">DE------DATE 
  EXTENDED</font> </p>
		<% 	}
			}		catch(Exception f)			{			out.println(f);			}
		%>
  <br>
 
</body>
</html>		