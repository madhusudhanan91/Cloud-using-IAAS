<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
	<head>
		
	    <style type="text/css">
<!--
.style9 {font-size: 24px}
-->
        </style>
	</head>

<body>
	    <table width="100%" border="0" cellpadding="0" cellspacing="0"   bgcolor="#FFFFFF">
          <tr valign="top">
            <td>
              <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
                <tr>
                  <td width="100%" height="108" >
                    <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
                </tr>
              </table>
              
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="50%"><a href="hrmenu.jsp"><font size="2" color="#FFFFFF">BACK 
            TO HR HOME</font></a></td>
          <td width="50%"><a href="projectlogin1.html"><font size="2" color="#FFFFFF">BACK 
            TO PROJECT ALLOT</font></a></td>
        </tr>
      </table>
        </table>
	    <p>&nbsp;
</p>
<p>&nbsp;</p>
	    <p>
            <%!
		ResultSet rs;
		PreparedStatement st,st1;
		Connection con=null;
	%>
      
          <%
		String prname=request.getParameter("prname");
		String prc=request.getParameter("prcode");
		String plcode=request.getParameter("plcode");
		String grouptype=request.getParameter("grouptype");
		String task=request.getParameter("task");
	
		String d1=request.getParameter("s1");
		String d2=request.getParameter("s2");
		String d3=request.getParameter("s3");
		String d4=request.getParameter("s4");
		String d5=request.getParameter("s5");
		String d6=request.getParameter("s6");
		String d7=request.getParameter("s7");
		String d8=request.getParameter("s8");
	
		String s1=null;
		String s2=null;
		String s3=null;
		String s4=null;
		String s5=null;
		String s6=null;
		String s7=null;
		String s8=null;


	%>
      
          <%

	if(d1!=null)
	s1=d1;
	else
	s1=" ";
	
	if(d2!=null)
	s2=d2;
	else
	s2=" ";
	
	if(d3!=null)
	s3=d3;
	else
	s3=" ";
	


	
	if(d4!=null)
	 s4=d4;
	else
	s4=" ";
	
	if(d5!=null)
	 s5=d5;
	else
	s5=" ";
	if(d6!=null)
	 s6=d6;
	else
	s6=" ";
	if(d7!=null)
	 s7=d7;
	else
	s7=" ";

	if(d8!=null)
	 s8=d8;
	else
	s8=" ";

	%>
      

            <%
		
		try
			{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
			}
		catch(Exception e)
			{
			out.println(e);
			}
	%>
	      
          <%
		String document="insert into doc2tab values(?,?,?,?,?,?,?,?,?)";
		try
		{
		st=con.prepareStatement(document);
		st.setString(1,prc);
		st.setString(2,prname);
		st.setString(3,task);
		st.setString(4,s1);
		st.setString(5,s2);
		st.setString(6,s3);
		st.setString(7,s4);
		st.setString(8,plcode);
		st.setString(9,grouptype);
		st.executeUpdate();


	%>
      
		
                </p>
	    <span class="style3"><marquee direction="left">Confirmation form</marquee></span>
		<p>Thank &quot;U&quot;, Project has been alloted successfully.</p>
		<p>Visit again.</p>
		<p>&nbsp;</p>
	<%	
		}
		catch(Exception e)
		{
		out.println(e);
		}
	%>
			
</body>
</html>