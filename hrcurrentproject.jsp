<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: larger}
-->
</style>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>

<body>
<div id="Layer1" style="position:absolute; left:267px; top:186px; width:257px; height:29px; z-index:1">
  <div align="center" class="style10">Current Projects </div>
</div>
<%! 
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
	
	<%
		String c=" ";
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
    <td height="108">&nbsp; </td>
    <td height="108" >
      <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE </font> 
      </center></td>
    <td height="108">&nbsp;</td>
    <td align="right" height="108">&nbsp;</td>
  </tr>
</table>
<table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
    <td width="50%"><a href="hrmenu.jsp" ><font color="#FFFFFF" size="2">BACK</font></a></td>
    <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">LOGOUT</font></a></td>
  </tr>
</table>

<p>
  <%
		String str="select * from com_project where status='"+c+"'";
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
</p>
<p>&nbsp;</p>
<hr>
<p>&nbsp;</p>
<table width="100%" border="1">
			<tr>
			<td><b>Project Code</b></td>
                        <td><b>Project Name</b></td>
                        <td><b>Client Name</b></td>
			<td><b>Client Addr</b></td>
			<td><b>Status</b></td>
		        <td><b>Organised by</b></td>
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
			
			    <td><a href="update1.jsp"><%= rs.getString(6)%></a></td>
			
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
<p>&nbsp;</p>
</body>
</html>
