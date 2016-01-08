<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
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
<style type="text/css">
<!--
.style1 {color: #330000}
.style2 {
	color: #0033FF;
	font-weight: bold;
}
.style9 {font-size: 24px}
-->
</style>
</head>

<%!
		ResultSet rs;
		Statement st,st1;
		Connection con=null;
		String a="";
		String b="";
		String c="";
		String d=null;
		String z=null;
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
		String prname=request.getParameter("prname");
		String plcode=request.getParameter("plcode");
		String task=request.getParameter("task");
		String gtype=request.getParameter("gtype");
		String n=request.getParameter("doc");
	%>
	
		

	

<%
		String str1="select * from addnew where emp_code='"+plcode+"'";
		try
		{
		st=con.createStatement();
		rs=st.executeQuery(str1);
		while(rs.next())
		{
		d=rs.getString(1);
		z=rs.getString(2);
		}
	
		}
		catch(Exception m)
		{
		out.println("Error");
		}
	%>
<body>

	

<div id="Layer2" style="position:absolute; left:301px; top:192px; width:263px; height:22px; z-index:2; font-weight: bold;">
  <div align="center" class="style1">Document Details</div>
</div>
<div id="Layer4" style="position:absolute; left:78px; top:271px; width:657px; height:477px; z-index:4">
 <form name="form1" method="post" action="doc2typevalidation.jsp">


<center>
<table>
<tr>
  <td>&nbsp;</td>
  <td>Project Name</td>
  <td><input type="text" name="prname" value="<%=d%>"></td>
   <td>&nbsp;</td>
</tr>
<tr>
	<td>Project Code</td>
	<td><input type=text name="prcode" value="<%=z%>">


	<td>Project Leader</td>
	<td><input type=text name="plcode" value="<%= plcode%>">
</tr>
</table>
<p>&nbsp;</p>
</center>
<div id="Layer5" style="position:absolute; left:85px; top:73px; width:257px; height:25px; z-index:5">
  <table width="256" border="1">
    <tr>
      <td><span class="style2">Group Type </span></td>
      <td>
        <input type="text" name="grouptype" value="<%= gtype%>">
      </td>
    </tr>
  </table>
</div>
<div id="Layer6" style="position:absolute; left:374px; top:71px; width:254px; height:26px; z-index:5">
  <table width="256" border="1">
    <tr>
      <td><span class="style2">Task Type </span></td>
      <td>
        <input type="text" name="task" value="<%= task%>">
      </td>
    </tr>
  </table>
</div>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="Layer3" style="position:absolute; left:211px; top:127px; width:317px; height:187px; z-index:5">
<br>
<br><br>
<%
	int l=Integer.parseInt(n);
	String s=null;
	for(int i=1;i<=l;i++)
	{
		s="s";
		s=s+i;
	%>
	<center>
	<table>
	<tr>
		<td>Document Name</td>
		<td><input type=text name="<%= s%>"></td>
	</tr>
	</table>
	</center>
	<%
	}
%>
</div>
   <p align="center">
      <input type="submit" name="Submit" value="Submit">
      <input name="Reset" type="reset" id="Reset" value="Reset">
    </p>




  </form>
 
</div>



<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr>
    <td width="100%" height="108" >
      <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT</font> 
      </center></td>
  </tr>
</table>
<table width="100%" height="24" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
    <td width="50%"><a href="home.jsp"></a><a href="contact.html"><font size="2" color="#FFFFFF">BACK</font></a></td>
    <td width="50%"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<hr>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>

