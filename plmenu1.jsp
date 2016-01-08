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
.style2 {
	font-size: x-large;
	font-weight: bold;
	color: #000099;
}
.style3 {color: #000066}
.style4 {color: #000000}
.style9 {font-size: 24px}
-->
</style>
</head>
	<%
	String name=request.getParameter("user");
	String pass=request.getParameter("pass");
	session.setAttribute("empid",name);
	String name1 = null;
	%>
	<%!
		Statement st;
		ResultSet rs;
		Connection con=null;
		String na=null;
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
		name1 = session.getAttribute("empid").toString();
		String s=new String("select * from emp_details where emp_code='"+name1+"'");
		try
		{
			st=con.createStatement();
			rs=st.executeQuery(s);
			while(rs.next())
			{
			na=rs.getString("emp_name");
			}
		}
		catch(Exception e)
			{
			}
	%>


<body background="images/WHTTXTR2.JPG">
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td>
      <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr>
          <td width="922" height="108" >
            <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE </font> 
            </center></td>
        </tr>
      </table>
      <table width="100%" height="22" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="100%"><div align="right"><a href="logout.html" ><font size="2" color="#FFFFFF">SIGNOUT</font></a></div></td>
        </tr>
      </table>
</table>
<p>&nbsp;</p>
<div id="Layer2" style="position:absolute; left:11px; top:147px; width:126px; height:28px; z-index:2">
  <table width="200" border="1">
    <tr>
      <td width="94"><div align="center"><span class="style3">Emp Name : </span></div></td>
      <td width="90"><div align="center"><span class="style3">Emp Code : </span></div></td>
    </tr>
    <tr>
      <td><%=na%></td>
      <td><%=name1%></td>
    </tr>
  </table>
</div>
<div id="Layer3" style="position:absolute; left:322px; top:191px; width:222px; height:29px; z-index:3">
  <table width="224" >
    <tr>
      <td><div align="center"><span class="style2">Project Leader </span></div></td>
    </tr>
  </table>
</div>
<div id="Layer8" style="position:absolute; left:115px; top:272px; width:195px; height:23px; z-index:9; font-weight: bold; color: #9999FF;">
  <div align="left">
    <p><a href="allotduration.jsp"><u><font face="Arial, Helvetica, sans-serif">1. 
      </font></u><font face="Arial, Helvetica, sans-serif">Allot the Durations 
      </font></a></p>
    <p><a href="update3.jsp"><font face="Arial, Helvetica, sans-serif">2. View 
      Duration</font></a></p>
  </div>
</div>
<div id="Layer4" style="position:absolute; left:355px; top:270px; width:198px; height:71px; z-index:10; font-size: larger; color: #9999FF;">
  <div align="left"> 
    <p> <a href="pcurrentlogin.html"><font face="Arial, Helvetica, sans-serif">1.Pending 
      Documents</font></a></p>
    <p><a href="pcompletedlogin.html"><font face="Arial, Helvetica, sans-serif">2.Completed 
      Documents</font></a></p>
  </div>
</div>
<div id="Layer7" style="position:absolute; left:589px; top:271px; width:198px; height:63px; z-index:13; color: #9999FF; font-size: larger;">
  <div align="left"><a href="pupdatelogin.html"><font face="Arial, Helvetica, sans-serif">3. 
    Update Documents</font> </a></div>
</div>
<p>&nbsp;</p>
<hr class="style4">
<p>&nbsp;</p>
<p align="center">&nbsp;	</p>
<p>&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>
