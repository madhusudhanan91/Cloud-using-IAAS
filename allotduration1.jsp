<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	Statement st;
	ResultSet rs;
	Connection con=null;
%>
<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		}
		catch(Exception e)	{	}
%>

<html>
<head>
<title>AUTOMATION OF IT PROCESS AND MANAGEMENT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {color: #9999FF}
.style2 {
	font-size: 22px;
	color: #9933FF;
}
.style9 {font-size: 24px}
-->
</style>
</head>
<body>
	  <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr>
          <td width="10" height="108">&nbsp; </td>
          <td width="893" height="108" >
            <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
      </center></td>
          <td width="18" height="108">&nbsp;</td>
          <td width="57" height="108" align="right">&nbsp;</td>
        </tr>
      </table>
	  
  <table width="100%" height="21" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
    <tr align="center"> 
      <td width="259"><a href="home.jsp"><font size="2" color="#FFFFFF">HOME</font></a></td>
      
    <td width="412"><a href="plmenu.jsp"><font size="2" color="#FFFFFF">BACK</font></a></td>
      
    <td width="306"><strong><font color="#FFFFFF" size="2"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></font></strong></td>
    </tr>
  </table>
<br>
<table width="26%" border="1" align="center">
  <tr>
    <td class="style2"><div align="center"><strong>Project Leader</strong></div></td>
  </tr>
</table>
<br>
<table width="17%" border="0" align="center">
  <tr>
    <td><div align="center"><u><strong>Allot Duration </strong></u></div></td>
  </tr>
</table>
<br><form method="post" action="allotduration.jsp">
<table width="50%" border="1" align="center">
  <tr> 
      <td width="54%" class="style1">Select the Worker ID </td>
      <td width="46%"><select name="select">
        </select> 
        <input type="submit" name="Submit" value="Select"></td>
  </tr>
</table>
  </form>
  <form name="form1" method="post" action="allotdurationvalidation.jsp">
        <p>&nbsp;        </p>
        <table width="671" height="177" border="1" align="center">
          
            <td><div align="justify" class="style1">Start Date </div></td>
            <td><input type="text" name="stdate"></td>
         
          <tr>
            <td><div align="justify" class="style1">End Date </div></td>
            <td><input type="text" name="enddate"></td>
          </tr>
        </table>
        <p align="center">
          <input type="submit" name="Submit2" value="Allot">
          <input type="reset" name="Submit3" value="Reset">
        </p>
      </form>

</body>
</html>
