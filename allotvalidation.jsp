<%@ page language="java" import="java.io.*,java.sql.*,java.util.*" %>
<html>
<head>
	<title>
	
	</title>
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
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT</font> 
            </center></td>
                    </tr>
                  </table>
                  <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
                    <tr align="center">
                      
          <td width="50%"><a href="home.html"></a><a href="hrmenu.jsp"><font color="#FFFFFF" size="2">BACK</font></a></td>
          <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">LOGOUT</font></a></td>
                    </tr>
                  </table>
            </table>
    <p>&nbsp;</p>
	        <p>
                <%
		String gl1=request.getParameter("gl1");
		String gl2=request.getParameter("gl2");
		String g1_tm1=request.getParameter("g1_tm1");
		String g1_tm2=request.getParameter("g1_tm2");
		String g1_tm3=request.getParameter("g1_tm3");
		String g1_tm4=request.getParameter("g1_tm4");
		String g2_tm1=request.getParameter("g2_tm1");
		String g2_tm2=request.getParameter("g2_tm2");
		String g2_tm3=request.getParameter("g2_tm3");
		String g2_tm4=request.getParameter("g2_tm4");
		String name=request.getParameter("name");
		String plcode=request.getParameter("plcode");
		String task1=request.getParameter("task1");
		String task2=request.getParameter("task2");
		String startdate=request.getParameter("startdate");
		String enddate=request.getParameter("enddate");
		String gtype1=request.getParameter("Gtype1");
		String gtype2=request.getParameter("Gtype2");
		String prcode=request.getParameter("prcode");

	%>
    
              <%!
		PreparedStatement st,st1,st2;
		Connection con=null;
		String empdat=null;
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
		String group1=new String("insert into group1 values(?,?,?,?,?,?,?,?,?,?,?,?)");
		try
			{
		
			st=con.prepareStatement(group1);
			st.setString(1,gtype1);
			st.setString(2,gl1);
			st.setString(3,g1_tm1);
			st.setString(4,g1_tm2);
			st.setString(5,g1_tm3);
			st.setString(6,g1_tm4);
			st.setString(7,name);
			st.setString(8,plcode);
			st.setString(9,task1);
			st.setString(10,startdate);
			st.setString(11,enddate);
			st.setString(12,prcode);
			st.executeUpdate();
			}
		catch(Exception e)
			{
			out.println(e);
			}
	%>
    
              <%
		String group2=new String("insert into group2 values(?,?,?,?,?,?,?,?,?,?,?,?)");
		try
			{
		
			st1=con.prepareStatement(group2);
			st1.setString(1,gtype2);
			st1.setString(2,gl2);
			st1.setString(3,g2_tm1);
			st1.setString(4,g2_tm2);
			st1.setString(5,g2_tm3);
			st1.setString(6,g2_tm4);
			st1.setString(7,name);
			st1.setString(8,plcode);
			st1.setString(9,task2);
			st1.setString(10,startdate);
			st1.setString(11,enddate);
			st1.setString(12,prcode);			
			st1.executeUpdate();
			
			}
		catch(Exception e)
			{
			out.println(e);
			}
	%>
                <%
		String empdat10=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+plcode+"'");

		try
			{
			st2=con.prepareStatement(empdat10);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    

                <%
		String empdat=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+gl1+"'");

		try
			{
			st2=con.prepareStatement(empdat);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
                <%
		String empdat1=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+gl2+"'");

		try
			{
			st2=con.prepareStatement(empdat1);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat2=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g1_tm1+"'");

		try
			{
			st2=con.prepareStatement(empdat2);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat3=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g1_tm2+"'");
		try
			{
			st2=con.prepareStatement(empdat3);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat4=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g1_tm3+"'");

		try
			{
			st2=con.prepareStatement(empdat4);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat5=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g1_tm4+"'");

		try
			{
			st2=con.prepareStatement(empdat5);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat6=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g2_tm1+"'");

		try
			{
			st2=con.prepareStatement(empdat6);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat7=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g2_tm2+"'");

		try
			{
			st2=con.prepareStatement(empdat7);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat8=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g2_tm3+"'");

		try
			{
			st2=con.prepareStatement(empdat8);
			st2.executeUpdate();
			}
		catch(Exception e)
		{
			out.println(e);
		}
	%>
    
              <%
		String empdat9=new String("update employment_details set emp_pro_involve='"+name+"',pro_code='"+prcode+"' where emp_code='"+g2_tm4+"'");

		try
			{
			st2=con.prepareStatement(empdat9);
			st2.executeUpdate();
			%>
            </p>
	        <span class="style3"><marquee direction="left">Confirmation form</marquee></span>
			<p>Thank &quot;U&quot;, Project has been alloted successfully.</p>
			<p>Visit again.<%=prcode%>
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

		
			