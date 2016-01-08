<%@ page language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<style type="text/css">
<!--
.style3 {
	font-size: x-large;
	color: #660000;
}
-->
</style>
<body background="images/yellow.gif">
<p>
  <%
	String name=(request.getParameter("name"));
	String code=(request.getParameter("code"));
	String dd=(request.getParameter("dd"));
	String mm=(request.getParameter("mm"));
	String yy=(request.getParameter("yy"));
	String dob=dd+"/"+mm+"/"+yy;
	String sex=(request.getParameter("sex"));
	String qual=(request.getParameter("qual"));
	String doj=(request.getParameter("doj"));
	String exp=(request.getParameter("exp"));
	String plat=(request.getParameter("plat"));
	String bg=(request.getParameter("bg"));
	String preadd=(request.getParameter("preadd"));
	String peradd=(request.getParameter("peradd"));
	String phno=(request.getParameter("phno"));
	String email=(request.getParameter("email"));
	String prcode="";
	String s5="";
	String s6="";

		


	Statement st=null;
	Connection con=null;
	String str="insert into emp_details values('"+name+"','"+code+"','"+dob+"','"+sex+"','"+qual+"','"+doj+"','"+exp+"','"+plat+"','"+bg+"','"+preadd+"','"+peradd+"','"+phno+"','"+email+"')";
	
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
		st.executeUpdate(str);
	
	%>
	<span class="style3"><marquee direction="left">FeedBack Form</marquee></span>
	<p>Thank &quot;U&quot;, Ur details have been registered.</p>
	<p>Visit again.</p>
	<p>&nbsp;</p>
	<%
	}
	catch(Exception d)
	{
	out.println("hey");	
	}
	%>


<p><a href="home.jsp">&lt;&lt;Home</a></p>
</body>
</html>
	
