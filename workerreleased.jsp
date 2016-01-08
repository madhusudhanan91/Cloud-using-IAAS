<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	<title>Worker Released
	</title>
	<style type="text/css">
<!--
.style1 {
	color: #330000;
	font-weight: bold;
}
body {
	background-color: #FFFFFF;
}
.style9 {font-size: 24px}
.style11 {color: #FFFFFF; font-weight: bold; }
-->
</style>
</head>
<body>
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top"> 
    <td> <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr> 
          <td height="108" > <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
        </tr>
      </table>
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="50%"><a href="hrmenu.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></td>
          <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">LOGOUT </font></a></td>
        </tr>
      </table>
</table>
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
<%
		String a=" ";
		String b=" ";
		String c=" ";
		String str1="update employment_details set emp_pro_involve='"+a+"',pro_status='"+b+"',pro_code='"+c+"' where pro_code='"+prcode+"'" ;
		try
		{
		st1=con.prepareStatement(str1);
		st1.executeUpdate();
		}
		catch(Exception g)
		{
		out.println(g);
		}
	%>
<%

		String str6="delete from doc1tab where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str6);
		}
		catch(Exception h)
		{
		out.println(h);
		}
	%>
<%

		String str7="delete from doc2tab where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str7);
		}
		catch(Exception h)
		{
		out.println(h);
		}
	%>
<%

		String str3="delete from group1 where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str3);
		}
		catch(Exception h)
		{
		out.println(h);
		}
	%>
<%

		String str4="delete from group2 where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str4);
		}
		catch(Exception j)
		{
		out.println(j);
		}
	%>
<%

		String str5="delete from addnew where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str5);
		}
		catch(Exception k)
		{
		out.println(k);
		}
	%>
<%

		String str9="delete from status where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str9);
		}
		catch(Exception k)
		{
		out.println(k);
		}
	%>
	<%

		String str10="delete from dateex where procode='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str10);
		}
		catch(Exception k)
		{
		out.println(k);
		}
	%>
<%

		String str="delete from workerdocument where pro_code='"+prcode+"'";
		try
		{
		st=con.createStatement();
		st.executeUpdate(str);
		%>
<p>&nbsp;</p>
<p align="center">Workers Released from completed project Successfully.... </p>
<p align="center"><a href="hrmenu.jsp">RETURN TO HOME</a></p> 
  <%
		}
		catch(Exception i)
		{
		out.println(i);
		}
	%>

</body>
</html>

		
		
