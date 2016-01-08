<%@ page language="java" import="java.sql.*,java.io.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<style type="text/css">
<!--
.style1 {
	font-size: larger;
	font-weight: bold;
	color: #330000;
}
.style2 {color: #0000CC}
.style3 {color: #330000}
.style4 {color: #000033}
.style5 {color: #000066}
.style9 {font-size: 24px}
-->
</style>
</head>
<%!
		Statement st,st1;
		ResultSet rs,rs1;
		Connection con=null;
		String s2=null;
		String s4=null;
		String s6=null;
		String s8=null;
		String s10=null;
		String s12=null;
		String s14=null;
		String s16=null;
		String s18=null;
		String s20=null;
		String s21=null;
		String s22=null;
		String s25=null;
		int a;
		String s1=null;
	%>
<%
	String prcode=request.getParameter("prcode");
%>
<%
	String pz="select * from addnew where pro_code='"+prcode+"'";
	try
	{
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
	st1=con.createStatement();
	rs1=st1.executeQuery(pz);
	while(rs1.next())	
	{
	s21=rs1.getString(1);
	s25=rs1.getString(2);
	s22=rs1.getString(7);		
	}
	}
	catch(Exception f)
	{
	}
%>


	<%
	String s1=request.getParameter("select1");	
		if(s1!=null)
		{
			 a= Integer.parseInt(s1);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s2=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>	
		<%
		String s3=request.getParameter("select2");
		if(s3!=null)
		{
			
			 a=Integer.parseInt(s3);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s4=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
	<%
		String s5=request.getParameter("select3");
		if(s5!=null)
		{
			
			 a=Integer.parseInt(s5);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s6=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
	<%
		String s7=request.getParameter("select4");
		if(s7!=null)
		{
			
			 a=Integer.parseInt(s7);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s8=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
	<%
		String s9=request.getParameter("select5");
		if(s9!=null)
		{
			
			 a=Integer.parseInt(s9);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s10=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
<%
		String s11=request.getParameter("select6");
		if(s11!=null)
		{
			
			 a=Integer.parseInt(s11);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s12=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
<%
		String s13=request.getParameter("select7");
		if(s13!=null)
		{
			
			 a=Integer.parseInt(s13);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s14=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
<%
		String s15=request.getParameter("select8");
		if(s15!=null)
		{
			
			a=Integer.parseInt(s15);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='TM'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s16=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
<%
		String s17=request.getParameter("select");
		if(s17!=null)
		{
			
			 a=Integer.parseInt(s17);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='GL'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s18=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>
<%
		String s19=request.getParameter("selection");
		if(s19!=null)
		{
			
			 a=Integer.parseInt(s19);
			
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","mani");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='GL'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s20=rs.getString("emp_code");												       
					}
					
					
					
				}					
				
		            }
				 catch(Exception e)
				 {
					
				 } 
	       }
	%>


<body>
  <form name="form1" method="post" action="allotvalidation.jsp">

<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr> 
       <td width="947" height="108" > <center class="style9">
          <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
        </center></td>
    
  </tr>
</table>
<table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
      <td width="50%"><a href="home.jsp"></a><a href="hrmenu.jsp"><font color="#FFFFFF" size="2">BACK</font></a></td>
      <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">LOGOUT</font></a></td>
  </tr>
</table>
<br>
<table width="23%" border="1" align="center">
  <tr> 
    <td bgcolor="#CCCCFF"><div align="center"><span class="style1">Allotment Details </span></div></td>
  </tr>
</table>
<br>
<table width="94%" height="404" border="0" align="center">
  <tr> 
    <td width="17%" height="32">&nbsp;</td>
    <td colspan="2"><div align="right"><span class="style2">Project Name</span></div></td>
    <td>&nbsp;</td>
    <td> <div align="center"> 
        <input type="text" name="name" value="<%=session.getValue("prname")%>">
      </div></td>
    <td>&nbsp;</td>
    <td width="12%">&nbsp;</td>
  </tr>
  <tr> 
    <td height="30">&nbsp;</td>
    <td colspan="2"><div align="right"><span class="style2">Project Code</span></div></td>
    <td>&nbsp;</td>
    <td><input type="text" name="prcode" value="<%=session.getValue("prcode")%>"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="30">&nbsp;</td>
    <td colspan="2"><div align="right"><span class="style2">PL Code:</span></div></td>
    <td width="5%">&nbsp;</td>
    <td><div align="center">
        <input type="text" name="plcode" value="<%=session.getValue("plcode")%>">
      </div></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
<tr> 
    <td height="36"><div align="right"><span class="style3">Actual Start Date 
        </span></div></td>
    <td><div align="right"> 
        <input type="text" name="startdate">
      </div></td>
    <td colspan="2">&nbsp;</td>
    <td><div align="right"><span class="style3">Actual End Date </span></div></td>
    <td><div align="right"> 
        <input type="text" name="enddate">
      </div></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="38"><div align="right"><span class="style3">Task No 1 </span></div></td>
    <td width="19%"><div align="right"> 
        <input type="text" name="task1" value="<%=1%>">
      </div></td>
    <td colspan="2">&nbsp;</td>
    <td width="20%"><div align="right"><span class="style3">Task No 2</span></div></td>
    <td width="20%"><div align="right"> 
        <input type="text" name="task2" value="<%=2%>">
      </div></td>
    <td>&nbsp;</td>
  </tr>
  
  <tr> 
    <td height="33"><div align="right">Group Type </div></td>
    <td><div align="right"> 
        <input type="text" name="Gtype1" value="<%=1%>">
      </div></td>
    <td colspan="2">&nbsp;</td>
    <td><div align="right">Group Type: </div></td>
    <td><div align="right"> 
        <input type="text" name="Gtype2" value="<%=2%>">
      </div></td>
    <td>&nbsp;</td>
  </tr>
  <tr> 
    <td height="40"><div align="right"><span class="style3">Group Leader 1:</span></div></td>
    <td><div align="right"> 
        <input name="gl1" type="text" maxlength="10" size="15" value="<%=s18%>">
      </div></td>
    <td colspan="2"><a href="gld.jsp">SELECT</a></td>
    <td><div align="right"><span class="style3">Group Leader 2: </span></div></td>
    <td><div align="right"> 
        <input type="text" name="gl2" size="15" value="<%=s20%>">
      </div></td>
    <td><span class="style5"><a href="gld1.jsp">SELECT</a></span></td>
  </tr>
  <tr> 
    <td height="35"><div align="right"><span class="style3">Team Member1: </span></div></td>
    <td><div align="right"> 
        <input type="text" name="g1_tm1" size="15" value="<%=s2%>">
      </div></td>
    <td colspan="2"><a href="tm1.jsp">SELECT</a></td>
    <td><div align="right"><span class="style3">Team Member1:</span></div></td>
    <td><div align="right"> 
        <input type="text" name="g2_tm1" size="15" value="<%=s10%>">
      </div></td>
    <td><span class="style5"><a href="tm5.jsp">SELECT</a></span></td>
  </tr>
  <tr> 
    <td height="34"><div align="right"><span class="style3">Team Member2: </span></div></td>
    <td><div align="right"> 
        <input type="text" name="g1_tm2" size="15" value="<%=s4%>">
      </div></td>
    <td colspan="2"><a href="tm2.jsp">SELECT</a></td>
    <td><div align="right"><span class="style3">Team Member2: </span></div></td>
    <td><div align="right"><span class="style3"> 
        <input type="text" name="g2_tm2" size="15" value="<%=s12%>">
        </span></div></td>
    <td><span class="style5"><a href="tm6.jsp">SELECT</a></span></td>
  </tr>
  <tr> 
    <td height="31"><div align="right"><span class="style3">Team Member3: </span></div></td>
    <td><div align="right"> 
        <input type="text" name="g1_tm3" size="15" value="<%=s6%>">
      </div></td>
    <td colspan="2"><a href="tm3.jsp">SELECT</a></td>
    <td><div align="right"><span class="style3">Team Member3:</span></div></td>
    <td><div align="right"> 
        <input type="text" name="g2_tm3" size="15" value="<%=s14%>">
      </div></td>
    <td><span class="style5"><a href="tm7.jsp">SELECT</a></span></td>
  </tr>
  <tr> 
    <td height="43"><div align="right"><span class="style3">Team Member3: </span></div></td>
    <td><div align="right"> 
        <input type="text" name="g1_tm4" size="15" value="<%=s8%>">
      </div></td>
    <td colspan="2"><a href="tm4.jsp">SELECT</a></td>
    <td><div align="right"><span class="style3">Team Member4:</span></div></td>
    <td><div align="right"> 
        <input type="text" name="g2_tm4" size="15" value="<%=s16%>">
      </div></td>
    <td><span class="style5"><a href="tm8.jsp">SELECT</a></span></td>
  </tr>
  <tr> 
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td colspan="2"> <div align="right"> 
        <input type="submit" name="Submit" value="ALLOT">
      </div></td>
    <td><input name="reset" type="reset" id="reset" value="CLEAR"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</form>
</body>
</html>
