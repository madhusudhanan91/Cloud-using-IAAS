<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
<title>Completed Document Details</title>
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
<body background="images/Nature Bkgrd.jpg">
<%! 
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
<%
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
              <td width="930" height="108" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
            </tr>
          </table>
          <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
            <tr align="center">
          <td width="50%"><a href="hrmenu.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></td>
              <td width="50%"><a href="logout.html" ><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
            </tr>
          </table>
    </table>
    <center><h1 class="style10"> COMPLETED DOCUMENTS DETAILS</h1>
      <hr>
      <p class="style10">&nbsp;</p>
    </center>
	<%
		String str="select * from com_project where status='"+c+"'";
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
			<table width="100%" border="1">
			<tr>
			
    <td width="18%"><b>Project Name</b></td>
                        
    <td width="13%"><b>Project Code</b></td>
                        <td width="21%"><b>Client Name</b></td>
			<td width="23%"><b>Client Addr</b></td>
			<td width="12%"><b>Status</b></td>
		        <td width="13%"><b>Organised by</b></td>
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
<a href="hrmenu.jsp"> </a> 
</body>
</html>		