	<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type"
content="text/html; charset=iso-8859-1">
<meta name="GENERATOR" content="Microsoft FrontPage Express 2.0">
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
.style9 {font-size: 24px}
.style10 {color: #660000}
.style11 {color: #000066}
.style12 {color: #000000}
-->
</style>
</head>
<%
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");


%>
<%!
	ResultSet rs;
	Statement st;
	Connection con=null;
%>
<%
	try
		{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");		
		}
	catch(Exception f)
		{
		}
%>
	<%
		String str="select * from login where username='"+user+"'";
		String a=null;
		String b=null;
		try
		{
		st=con.createStatement();
		rs=st.executeQuery(str);
		while(rs.next())
		{

		b=rs.getString(1);
		a=rs.getString(2);
		
		}
		}
	catch(Exception f)
		{
		}
	%>
<body link="#860653" vlink="#FF0000" alink="#911200" >
<div id="Layer4" style="position:absolute; left:297px; top:181px; width:337px; height:27px; z-index:4; font-size: larger;">
  <div align="center"> <u><font color="blue" size="2">PROJECT MANAGER MENU </font></u></div>
</div>
<div id="Layer1" style="position:absolute; left:15px; top:308px; width:179px; height:134px; z-index:5">
  <table cellpadding="3" cellspacing="0"  dir="ltr">
    <tr>
      <th width="177" colspan="2" align="left" ><div align="center" class="style11"><font size="2" face="Tahoma">ADD PROJECTS </font></div></th>
    </tr>
    <tr>
      <td height="26" colspan="2"><div align="center" class="style12"><a href="addpro1.jsp">New Projects </a></div></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center" class="style12"><u><a href="projectlogin.html">Allot Workers</a></u> </div></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center" class="style12"><u><a href="projectlogin1.html">Documet Creation </a></u></div></td>
    </tr>
    <tr>
      <td colspan="2"><p align="center" class="style12"><u><a href="docalloc.html">Allot Document </a></u></p></td>
    </tr>
  </table>
</div>
<div id="Layer3" style="position:absolute; left:205px; top:310px; width:175px; height:82px; z-index:6">
  <table  cellpadding="3" cellspacing="0" >
    <tr>
      <th width="179" colspan="2" align="left"><div align="center" class="style11"><font size="2" face="Tahoma">VIEW PROJECTS </font></div></th>
    </tr>
    <tr>
      <td colspan="2"><p align="center"><a href="viewcompleted.jsp"><font color="#800000"><u> Completed Projects </u></font></a></p></td>
    </tr>
    <tr>
      <td colspan="2"><p align="center"><font color="#800000"><u><a href="hrcurrentproject.jsp">Current Projects </a></u></font></p></td>
    </tr>
  </table>
</div>
<div id="Layer5" style="position:absolute; left:588px; top:311px; width:183px; height:54px; z-index:7">
  <table  cellpadding="3" cellspacing="0" >
    <tr>
      <th width="182" colspan="2" align="left" ><div align="center" class="style11"><font size="2" face="Tahoma">UPDATE PROJECTS</font></div></th>
    </tr>
    <tr>
      <td colspan="2"><p align="center"><a href="update.jsp"><font color="#800000"><u>Update projects </u></font></a></p></td>
    </tr>
  </table>
</div>
<div id="Layer6" style="position:absolute; left:386px; top:311px; width:188px; height:78px; z-index:8">
  <table  cellpadding="3" cellspacing="0" >
    <tr>
      <th width="182" colspan="2" align="left" ><div align="center"><span class="style11"><font size="2" face="Tahoma">DELETE 
          PROJECTS </font></span></div></th>
    </tr>
    <tr>
      <td colspan="2"><div align="center" class="style10"><u><a href="releaseworker.html">Release Workers</a></u></div></td>
    </tr>
    <tr>
      <td colspan="2"><p align="center"><a href="hrdellogin.html"><font color="#800000"> <u>Delete Projects </u></font></a></p></td>
    </tr>
  </table>
</div>

<div id="Layer2" style="position:absolute; left:10px; top:161px; width:245px; height:59px; z-index:2">
  <table width="247" height="55">
    <tr>
      <td width="117" height="21" bgcolor="#FFFFFF"><div align="center"><strong>Employer Name </strong></div></td>
	
      <td width="114" bgcolor="#FFFFFF"><div align="center"><strong>Employer Code </strong></div></td>
    </tr>
    <tr>

		
      <td><%=session.getValue("name")%></td>
      <td><div align="center"><%=session.getValue("empcode")%></div>
      </td>
    </tr>
  </table>
</div>
<table width=100% height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr> 
    <td width="100%" height="108" > <div align="center">
        <p class="style9"><font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font></p>
      </div>
      </td>
  </tr>
</table>
<center>
  <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
    <tr align="center"> 
      <td width="50%"><a href="empdetails.html" ><font size="2" color="#FFFFFF">REGISTRATION</font></a></td>
      <td width="50%"><a href="logout.html" ><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
    </tr>
  </table>
  <h2><u></u></h2>
</center>
<div align="left">
<p>&nbsp;</p>
<div align="center">
<center>
    <hr>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</center></div>
<div align="center"><center>
  <p>&nbsp;</p>
</center></div>
<div align="center"><center>
  <p>&nbsp;</p>
</center></div>
<div align="center"><center>
</center></div>
</body>
</html>
