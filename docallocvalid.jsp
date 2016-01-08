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
              <td height="100%" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
            </tr>
          </table>
          <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
            <tr align="center">
              
          <td width="50%"><a href="hrmenu.jsp"><font color="#FFFFFF" size="2">BACK</font></a></td>
              
          <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">LOGOUT</font></a></td>
            </tr>
          </table>
    </table>
	<p>&nbsp;
    </p>
	<p>&nbsp;</p>
	<p>
	  <%!
		ResultSet rs;
	PreparedStatement st,st1,st2;
		Connection con=null;
	%>


	  <%

		String tm1=request.getParameter("tm1");
		String doc1=request.getParameter("doc1");

		String tm2=request.getParameter("tm2");
		String doc2=request.getParameter("doc2");

		String tm3=request.getParameter("tm3");
		String doc3=request.getParameter("doc3");

		String tm4=request.getParameter("tm4");
		String doc4=request.getParameter("doc4");
		
		String prname=request.getParameter("prname");
		String prcode=request.getParameter("prcode");
		String glcode=request.getParameter("glcode");
		String plcode=request.getParameter("plcode");
	%>
	

	  <%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
			
		}
		catch(Exception e)
		{
		}
	%>


	  <%
		String str="insert into workerdocument values(?,?,?,?,?,?)";
		String str1="insert into status values(?,?,?,?,?,?,?,?,?,?,?)";
		String str2="insert into dateex values(?,?,?,?)";
		try
		{
		st=con.prepareStatement(str);
		st1=con.prepareStatement(str1);
		st2=con.prepareStatement(str2);		
		if(tm1!=null)
		{
		st.setString(1,tm1);
		st.setString(2,doc1);
		st.setString(3,prname);
		st.setString(4,prcode);
		st.setString(5," ");
		st.setString(6," ");
		
		st1.setString(1,tm1);
		st1.setString(2,doc1);
		st1.setString(3,glcode);
		st1.setString(4," ");
		st1.setString(5," ");
		st1.setString(6,"IP");
		st1.setString(7," ");
		st1.setString(8," ");
		st1.setString(9,prname);
		st1.setString(10,prcode);
		st1.setString(11,plcode);
		
		st2.setString(1,tm1);
		st2.setString(2,prcode);
		st2.setString(3,"No");
		st2.setInt(4,0);
		
		st.executeUpdate();
		st1.executeUpdate();
		st2.executeUpdate();
		}
		if(tm2!=null)
		{
		st.setString(1,tm2);
		st.setString(2,doc2);
		st.setString(3,prname);
		st.setString(4,prcode);
		st.setString(5," ");
		st.setString(6," ");
		
		st1.setString(1,tm2);
		st1.setString(2,doc2);
		st1.setString(3,glcode);
		st1.setString(4," ");
		st1.setString(5," ");
		st1.setString(6,"IP");
		st1.setString(7," ");
		st1.setString(8," ");
		st1.setString(9,prname);
		st1.setString(10,prcode);
		st1.setString(11,plcode);
		
		st2.setString(1,tm2);
		st2.setString(2,prcode);
		st2.setString(3,"No");
		st2.setInt(4,0);
		
		st.executeUpdate();
		st1.executeUpdate();
		st2.executeUpdate();
		
		}

		if(tm3!=null)
		{
		st.setString(1,tm3);
		st.setString(2,doc3);
		st.setString(3,prname);
		st.setString(4,prcode);
		st.setString(5," ");
		st.setString(6," ");
	
		st1.setString(1,tm3);
		st1.setString(2,doc3);
		st1.setString(3,glcode);
		st1.setString(4," ");
		st1.setString(5," ");
		st1.setString(6,"IP");
		st1.setString(7," ");
		st1.setString(8," ");
		st1.setString(9,prname);
		st1.setString(10,prcode);
		st1.setString(11,plcode);
		
		st2.setString(1,tm3);
		st2.setString(2,prcode);
		st2.setString(3,"No");
		st2.setInt(4,0);
		
		st.executeUpdate();
		st1.executeUpdate();
		st2.executeUpdate();
		}

		if(tm4!=null)
		{
		st.setString(1,tm4);
		st.setString(2,doc4);
		st.setString(3,prname);
		st.setString(4,prcode);
	
		st.setString(5," ");
		st.setString(6," ");
		
		st1.setString(1,tm4);
		st1.setString(2,doc4);
		st1.setString(3,glcode);
		st1.setString(4," ");
		st1.setString(5," ");
		st1.setString(6,"IP");
		st1.setString(7," ");
		st1.setString(8," ");
		st1.setString(9,prname);
		st1.setString(10,prcode);
		st1.setString(11,plcode);
		
		st2.setString(1,tm4);
		st2.setString(2,prcode);
		st2.setString(3,"No");
		st2.setInt(4,0);
		
		st.executeUpdate();
		st1.executeUpdate();
		st2.executeUpdate();
		%>

		Thank u...
		<%		

		}
		}
		catch(Exception f)
		{
		out.println("hello"+f);
		}
	%>

	</p>
</body>
</html>
