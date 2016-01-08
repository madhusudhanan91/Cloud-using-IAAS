<%@ page language="java" import="java.io.*,java.sql.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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
.style4 {
	font-size: large;
	color: #3300CC;
}
.style6 {
	color: #0033FF;
	font-weight: bold;
}
.style9 {font-size: 24px}
-->
</style>
</head>
<%
	String s=request.getParameter("prcode");
	String s1=request.getParameter("gtype");
	ResultSet rs;
	Statement st;
	String m=null;
	String n=null;
	String z=null;
	String a=null;
	String b=null;
	Connection con=null;
%>
	<%
		String str="select * from addnew where pro_code='"+s+"'";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
		rs=st.executeQuery(str);
		while(rs.next())
		{
		n=rs.getString(1);
		z=rs.getString(2);
		m=rs.getString(7);
		}
		}
		catch(Exception e)
		{
		}
	%>
		
<%
	if(s1.equals("1"))
		{
				String str1="select * from group1 where pro_code='"+s+"'";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
		st=con.createStatement();
		rs=st.executeQuery(str1);
		while(rs.next())
		{
		a=rs.getString(2);
		b=rs.getString(9);
		}
		}
		catch(Exception e)
		{
		}
		}

	%>
		
		
<%
	if(s1.equals("2"))
		{
				String str2="select * from group2 where pro_code='"+s+"'";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
		st=con.createStatement();
		rs=st.executeQuery(str2);
		while(rs.next())
		{
		a=rs.getString(2);
		b=rs.getString(9);
		}
		}
		catch(Exception e)
		{
		}
		}

	%>
		

<body>
<div id="Layer2" style="position:absolute; left:263px; top:184px; width:301px; height:25px; z-index:2">
  <div align="center" class="style4">Documents Creation Form </div>
</div>
<div id="Layer3" style="position:absolute; left:182px; top:250px; width:454px; height:202px; z-index:3">
  <form name="form1" method="post" action="taskvalidation.jsp">
    <table width="452" border="1">
      <tr>
        <td width="244"><span class="style6">Enter the Project Code </span></td>
        <td width="192"><input type="text" name="prcode" value="<%=z%>"></td>
      </tr>
      <tr>
        <td><span class="style6">Enter the Project Leader Code </span></td>
        <td><input type="text" name="plcode" value="<%=m%>"></td>
      </tr>
      <tr>
        <td><span class="style6">Enter the Task No </span></td>
        <td><input type="text" name="task" value="<%=b%>"></td>
      </tr>
      <tr>
        <td><span class="style6">Enter the Group Leader code </span></td>
        <td><input type="text" name="gtype" value="<%=a%>"></td>
      </tr>
      <tr>
        <td><span class="style6">Enter the no of documents</span></td>
        <td><input type="text" name="doc"></td>
      </tr>
    </table>
    <p align="center">
      <input type="submit" name="Submit" value="Create">
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
    <td width="50%"><a href="hrmenu.jsp"><font color="#FFFFFF" size="2">BACK</font></a></td>
    <td width="50%"><a href="logout.html"><font size="2" color="#FFFFFF">SIGN 
      OUT </font></a></td>
  </tr>
</table>
<p>&nbsp;</p>
<hr>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
