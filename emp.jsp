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

  <%!
	Connection con=null;
	ResultSet rs1;
	String des;
	PreparedStatement st,st1;
	
  %>
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
String s5="";
String s6="" ;
String s7="";


		if(code.startsWith("PM"))
		{
		des="PM";
		}
		else if(code.startsWith("PL"))
		{
		des="PL";
		}
		else if(code.startsWith("GL"))
		{
		des="GL";
		}
		else if(code.startsWith("TM"))
		{
		des="TM";
		}
		else
		{
		out.println("Not match anything");
		}


%>

	  <%
	
	
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
	
		}
		
		catch(Exception d)
		{
		out.println(d);	
		}
	%>
		
	<%
	String str=new String("insert into emp_details values(?,?,?,?,?,?,?,?,?,?,?,?,?)");		
		
		try
		{
		st=con.prepareStatement(str);
	
		st.setString(1,name);
		st.setString(2,code);
		st.setString(3,dob);
		st.setString(4,sex);
		st.setString(5,qual);
		st.setString(6,doj);
		st.setString(7,exp);
		st.setString(8,plat);
		st.setString(9,bg);
		st.setString(10,preadd);
		st.setString(11,peradd);
		st.setString(12,phno);
		st.setString(13,email);
		st.executeUpdate();	
		}
		catch(Exception f)
		{
		out.println(f);
		}
	%>
	
	<%

	String str1=new String("insert into employment_details values(?,?,?,?,?,?,?,?,?,?);");
	try
	{
		st1=con.prepareStatement(str1);
		st1.setString(1,name);
		st1.setString(2,code);
		st1.setString(3,des);
		st1.setString(4,plat);
		st1.setString(5,doj);
		st1.setString(6,exp);
		st1.setString(7,dob);
		st1.setString(8,s5);
		st1.setString(9,s6);
		st1.setString(10,s7);
		st1.executeUpdate();
	%>
	<span class="style3"><marquee direction="left">FeedBack Form</marquee></span>
	<p>Thank &quot;U&quot;, Ur details have been registered.</p>
	<p>Visit again.</p>
	<p>&nbsp;</p>
	<%
	}
	catch(Exception p)
	{
	out.println(p);	
	}
	%>


<p><a href="home.jsp">&lt;&lt;Home</a></p>
</body>
</html>
	
