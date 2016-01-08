<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!

	Statement st,st1,st2;
	ResultSet rs,rs1,rs2;
	Connection con=null;
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
	String user=request.getParameter("user");
	String pass=request.getParameter("pass");
	String b="";
	String c="";
	String d="";
	String m="";
	String p="";
	String d1="";
	String gl="";
	String pl="";
	String pc="";
	String perwor="";
	//session.setAttribute("user",user);
%>
	
<%
	String str="select * from emp_details where emp_code='"+user+"'";
	try
	{
	st=con.createStatement();
	rs=st.executeQuery(str);
	while(rs.next())
	{
	if(user.equals(rs.getString("emp_code")))
	{
	b=rs.getString(1);
	}
	}
	}
	catch(Exception f)
	{
	out.println(f);
	}
%>

<%
	String str1="select * from status where emp_code='"+user+"'";
	try	{
	st1=con.createStatement();
	rs1=st1.executeQuery(str1);
		while(rs1.next())	{
			if(user.equals(rs1.getString("emp_code")))	{
				c=rs1.getString(2);
				p=rs1.getString(3);
				pc=rs1.getString(8);
				m=rs1.getString(9);
			}
		}
	}catch(Exception g)	{	}
%>

<%
	String str2="select * from workerdocument where Workerid='"+user+"'";
	try
	{
	st2=con.createStatement();
	rs2=st2.executeQuery(str2);
	
	while(rs2.next())
	{
	if(user.equals(rs2.getString(1)))
	{
	d=rs2.getString(5);
	d1=rs2.getString(6);
	}
	}
	}
	catch(Exception l)
	{
	}
%>

<%
	String str3="select emp_code from employment_details where pro_code='"+user+"'";
	try
	{
	st2=con.createStatement();
	rs2=st2.executeQuery(str2);
	
	while(rs2.next())
	{
	if(user.equals(rs2.getString(1)))
	{
	d=rs2.getString(5);
	d1=rs2.getString(6);
	}
	}
	}
	catch(Exception l)
	{
	}
%>
<%
	String str5="select glcode, plcode, per_work from status where emp_code='"+user+"'";
	try
	{
	Statement st1=con.createStatement();
	ResultSet rs1=st1.executeQuery(str5);
	if(rs1.next())	{
		gl=rs1.getString(1);
		pl=rs1.getString(2);
		perwor = rs1.getString(3);
	}
	}catch(Exception g){	}
%>
<%
	String str6="select days from dateex where empid='"+user+"' and days>0";
	int days=0;
	try
	{
	Statement st1=con.createStatement();
	ResultSet rs1=st1.executeQuery(str6);
	if(rs1.next())	{
		days=rs1.getInt(1);
	}
	}catch(Exception g){	}
%>

<html>
<head>
<title>AUTOMATION OF IT PROCESS AND MANAGEMENT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {
	font-size: x-large;
	font-weight: bold;
	color: #9999FF;
}
.style18 {
	font-size: larger;
	color: #99CCFF;
}
.style19 {color: #000099}
.style20 {color: #0033FF}
.style9 {font-size: 24px}
.style21 {color: #CC33FF}
.style22 {color: #FFFFFF}
-->
</style>
</head>
<body>
<%
if(days>0){ %>
<% } 
%>
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td>
      <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr>
          <td width="933" height="108" >
            <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font>  
            </center></td>
       </tr>
      </table>
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="100%"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
        </tr>
      </table>
</table>

<table width="234" >
  <tr> 
    <td width="106" bgcolor="#6699FF"><span class="style22">Member Name </span></td>
    <td width="112" bgcolor="#6699FF"><span class="style22">Member Code </span></td>
  </tr>
  <tr bgcolor="#99CCFF"> 
    <td><%=b%></td>
    <td><%=user%></td>
  </tr>
</table>
<table width="29%" border="1" align="center">
  <tr>
    <td><div align="center" class="style9">Team Member Slide </div></td>
  </tr>
</table>
<table width="25%" border="0" align="right">
  <tr>
    <td class="style18">Already <%= days %> days extended</td>
  </tr>
</table>
<br>
<br>
<table width="747" height="205" align="center">
  <tr> 
    <td width="169">&nbsp;</td>
    <td width="180"><span class="style20">Project Name</span></td>
    <td width="157" class="style18"> : <%=m%> </td>
    <td width="221">&nbsp;</td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td><span class="style20">Member Code </span></td>
    <td class="style18"> : <%=user%> <input name="tmcode" type="hidden" id="tmcode" value="<%=user%>"></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td><span class="style19">Document Name </span></td>
    <td><p class="style18">: <%=c%> 
        <input name="docname" type="hidden" id="docname" value="<%=c%>">
      </p></td>
    <td><span class="style19">GroupLeader Code </span></td>
    <td class="style18">: <%=p%> <input name="glcode" type="hidden" id="glcode" value="<%=p%>"></td>
  </tr>
  <tr> 
    <td><span class="style19">Open Date </span></td>
    <td class="style18">: <%=d%> <input name="odate" type="hidden" id="odate" value="<%=d%>"></td>
    <td><span class="style19">Close Date </span></td>
    <td class="style18">: <%=d1%> <input name="cdate" type="hidden" id="cdate" value="<%=d1%>"></td>
  </tr>
  <tr> 
    <td height="38"><span class="style19">Status</span></td>
    <td class="style18">: 
      <select name="status" id="select7">
        <option value="IP" selected>In Progress</option>
        <option value="C">Completed</option>
        <option value="NC">Not Completed</option>
        <option value="DE">Date Extended</option>
      </select></td>
    <td><span class="style19">Verified By </span></td>
    <td><span class="style18">:</span> <select name="verby" id="select8">
        <option value="<%=gl%>"><%= gl %></option>
        <option value="<%=pl%>"><%= pl %></option>
      </select></td>
  </tr>
  <tr> 
    <td><span class="style19">Percentage of Work Done </span></td>
    <td class="style18">:<%=perwor%> <input name="perwork" type="text" size="10"></td>
    <td class="style19">Date Extends</td>
    <td class="style18">: 
      <input type="radio" name="dateext" value="Yes"> <span class="style19">Yes 
      <input name="dateext" type="radio" value="No" checked>
      No </span></td>
  </tr>
</table>
<hr>

<form name="form1" method="post" action="tmvalidation.jsp">
  <p align="center"> 
    <input type="submit" name="Submit" value="Update">
  </p>
</form>

<p align="center" class="style18">Documents from Team leader : <a href="uploadview.jsp">View the document</a></p>

<hr>
</body>
</html>
