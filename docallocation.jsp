<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style2 {color: #FFFFFF}
.style3 {
	color: #330000;
	font-weight: bold;
}
.style4 {color: #330000}
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

	<%!
		ResultSet rs,rs1,rs2,rs3;
		Statement st,st1,st2,st3;
		Connection con=null;
	%>

	<%
		String prcode=request.getParameter("prcode");
		String grouptype=request.getParameter("grouptype");
		String tasktype=request.getParameter("tasktype");
		String a="";
		String b="";
		String c="";
		String d="";
		String e="";
		String f="";
		String g="";
		String h="";
		String m="";
		String p="";
		String i="";
		String z="";
			
	%>

	<%
		try
			{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
			}
		catch(Exception n)
			{
			out.println(n);
			}
	%>

	
	<%
		String str="select * from group1 where Grouptype='"+grouptype+"' and pro_code='"+prcode+"'";
		String str1="select * from group2 where Grouptype='"+grouptype+"' and pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st1=con.createStatement();
		rs=st.executeQuery(str);
		rs1=st1.executeQuery(str1);
		if(rs!=null)
			{
			while(rs.next())
			{
			 m=rs.getString(2);		
			 a=rs.getString(3);
			 b=rs.getString(4);
			 c=rs.getString(5);
			 d=rs.getString(6);
			 z=rs.getString(7);
			 p=rs.getString(8);
			}
			}
		
		if(rs1!=null)
			{
		
			while(rs1.next())
			{	
			 m=rs1.getString(2);		
			 a=rs1.getString(3);
			 b=rs1.getString(4);
			 c=rs1.getString(5);
			 d=rs1.getString(6);	
			 z=rs1.getString(7);
			 p=rs1.getString(8);
			}
			}
		}
	catch(Exception n)
		{
	        }
	%>
	<%
		String str2="select * from doc1tab where task='"+grouptype+"' and pro_code='"+prcode+"'";
		String str3="select * from doc2tab where task='"+grouptype+"' and pro_code='"+prcode+"'";
		try
		{
		st2=con.createStatement();
		st3=con.createStatement();
		rs2=st2.executeQuery(str2);
		rs3=st3.executeQuery(str3);
		if(rs2!=null)
		{
		while(rs2.next())
		{
		i=rs2.getString(1);	
		 e=rs2.getString(4);
		 f=rs2.getString(5);
		 g=rs2.getString(6);
		 h=rs2.getString(7);
	
		
		}
		}
		
		if(rs3!=null)
		{
		
		while(rs3.next())
		{
		
		 
		i=rs3.getString(1);
		 e=rs3.getString(4);
		 f=rs3.getString(5);
		 g=rs3.getString(6);
		 h=rs3.getString(7);

		}
		}
		}
	catch(Exception l)
		{
	}
	%>
			
<body>
<div id="Layer2" style="position:absolute; left:260px; top:184px; width:263px; height:26px; z-index:2">
  <div align="center" class="style3">Allocation Details </div>
</div>
<div id="Layer3" style="position:absolute; left:44px; top:261px; width:740px; height:344px; z-index:3">
  <form name="form1" method="post" action="docallocvalid.jsp">
    <p>&nbsp;</p>
    <p>&nbsp;</p>
<div id="Layer4" style="position:absolute; left:232px; top:19px; width:283px; height:28px; z-index:4">
  <table width="283" border="1">
    <tr>
      <td>Project Name </td>
      <td>
        <input type="text" name="prname"  value="<%= z%>">
 </td>
    </tr>
  </table>
</div>
    <table width="745">
      <tr>
        <td>&nbsp;</td>
        <td>Project Code </td>
        <td><input type="text" name="prcode"  value="<%= i%>"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td>Project Leader Code </td>
        <td><input type="text" name="plcode" value="<%= p%>"></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td><span class="style4">Group Leader Code </span></td>
        <td><input type="text" name="glcode" value=<%=m%>></td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td>Team Worker1 </td>
        <td><input type="text" name="tm1" value="<%= a%>"></td>
        <td>Document Name </td>
        <td><input type="text" name="doc1"  value="<%= e%>"></td>
      </tr>
      <tr>
        <td>Team Worker2</td>
        <td><input type="text" name="tm2" value="<%= b%>"></td>
        <td>Document Name </td>
        <td><input type="text" name="doc2"  value="<%= f%>"></td>
      </tr>
      <tr>
        <td>Team Worker3 </td>
        <td><input type="text" name="tm3" value="<%= c%>"></td>
        <td>Document Name </td>
        <td><input type="text" name="doc3"  value="<%= g%>"></td>
      </tr>
      <tr>
        <td>Team Worker4 </td>
        <td><input type="text" name="tm4" value="<%= d%>"></td>
        <td>Document Name </td>
        <td><input type="text" name="doc4"  value="<%= h%>"></td>
      </tr>
    </table>
    <p align="center">
      <input type="submit" name="Submit" value="Submit">
      <input name="Reset" type="reset" id="Reset" value="Reset">
    </p>
    <p>&nbsp;</p>
  </form>
</div>

<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr>
    <td width="922" height="108" >
      <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT</font> 
      </center></td>
  </tr>
</table>
<table width="100%" height="24" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center">
    <td width="50%"><a href="hrmenu.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></td>
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
</body>
</html>
