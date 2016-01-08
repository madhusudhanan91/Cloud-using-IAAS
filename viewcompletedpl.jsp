<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
<title>View </title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: 16px}
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
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
      <tr valign="top">
        <td>
          <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
            <tr>
              <td height="100%" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
            </tr>
          </table>
          
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="50%"><a href="plmenu.jsp"><font size="2" color="#FFFFFF">BACK</font></a></td>
          <td width="50%"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
        </tr>
      </table>
    </table>
    <center><h1 class="style10"> COMPLETED DOCUMENTS DETAILS</h1>
      <hr>
      <p class="style10">&nbsp;</p>
    </center>
	<%
		String str="select * from status where plcode='"+code+"'and status='"+c+"'";
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
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
			
			    <td><%= rs.getString(6)%></td>
			
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