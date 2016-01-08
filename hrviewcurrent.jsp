<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
<style type="text/css">
<!--
.style9 {font-size: 24px}
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
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
      <tr valign="top">
        <td>
          <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
            <tr>
              <td width="100%" height="108" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
            </tr>
          </table>
          <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
            <tr align="center">
              <td width="50%"><a href="hrmenu.jsp" class="nav" title="Home" target="right1"><font size="2" color="#FFFFFF">BACK</font></a></td>
              <td width="50%"><a href="logout.html" class="nav" title="Contact Us" target="right1"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
            </tr>
          </table>
    </table>
    <form name="form1" method="post" action="viewhr.jsp">
<input type='hidden' name='prname' value=<%=prname%>>
<input type='hidden' name='prcode' value=<%=prcode%>>

<%
		String str="select * from addnew where pro_code='"+prcode+"'";
		try
			{
			st=con.createStatement();
			rs=st.executeQuery(str);
			%>
			<table>
			<tr>
			<td><b>Project Code</b></td>
                        <td><b>Project Name</b></td>
                        <td><b>Client Address</b></td>
			<td><b>Client Name</b></td>
			<td><b>Environment</b></td>
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
<br>

<center>Click <input type="submit" name="submit" value="OK">to View the details</center>

</form>
<br>



</body>
</html>

		
		
