<%@ page language="java" import="java.sql.*,java.io.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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
<div id="Layer3" style="position:absolute; left:50px; top:210px; width:694px; height:513px; z-index:3">
  <form name="form1" method="post" action="allotvalidation.jsp">

	 <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div id="Layer4" style="position:absolute; left:223px; top:100px; width:249px; height:65px; z-index:4">
      <table width="250" height="66" >
        <tr>
          <td width="88"><span class="style2">PL Code:</span></td>
          <td width="150">
            <input type="text" name="plcode" value="<%=s22%>">
          </td>
        </tr>
      </table>
  </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
<p align="center">
<input type="submit" name="Submit" value="ALLOT">      
<input name="reset" type="reset" id="reset" value="CLEAR">
</p>
   
    <p align="center">&nbsp;</p>
</div>
<div id="Layer4" style="position:absolute; left:276px; top:204px; width:249px; height:48px; z-index:4">
  <table width="250" height="66" >
    <tr>
      <td><span class="style2">Project Name:</span></td>
      <td>
        <input type="text" name="name" value="<%=s21%>">
</td>
    </tr>
  </table>
   <table width="250" height="66" >
    <tr>
      <td><span class="style2">Project CODE:</span></td>
      <td>
        <input type="text" name="prcode" value="<%=s25%>">
</td>
    </tr>
  </table>
</div>
<div id="Layer5" style="position:absolute; left:57px; top:507px; width:319px; height:144px; z-index:5">
  <table width="319" height="127">
    <tr>
      <td width="136"><span class="style3">Group Leader 1: </span></td>
      <td width="91">
        <input name="gl1" type="text" maxlength="10" size="15" value="<%=s18%>">
    </td>
      <td width="70"><div align="center" class="style4"><a href="groupleader/gld.jsp">SELECT</a></div></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member1: </span></td>
      <td>
        <input type="text" name="g1_tm1" size="15" value="<%=s2%>">
   </td>
      <td><div align="center" class="style4"><a href="teamworkers/tm1.jsp">SELECT</a></div></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member2: </span></td>
      <td>
        <input type="text" name="g1_tm2" size="15" value="<%=s4%>">
      </td>
      <td><div align="center" class="style4"><a href="teamworkers/tm2.jsp">SELECT</a></div></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member3: </span></td>
      <td>
        <input type="text" name="g1_tm3" size="15" value="<%=s6%>">
      </td>
      <td><div align="center" class="style4"><a href="teamworkers/tm3.jsp">SELECT</a></div></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member4: </span></td>
      <td>
        <input type="text" name="g1_tm4" size="15" value="<%=s8%>">
 </td>
      <td><div align="center" class="style4"><a href="teamworkers/tm4.jsp">SELECT</a></div></td>
    </tr>
  </table>
</div>
<div id="Layer6" style="position:absolute; left:414px; top:490px; width:312px; height:144px; z-index:6">
  <table width="311" height="145">
    <tr>
      <td width="133"><span class="style3">Group Leader 2: </span></td>
      <td width="90">
        <input type="text" name="gl2" size="15" value="<%=s20%>">
     </td>
      <td width="66"><span class="style5"><a href="groupleader/gld1.jsp">SELECT</a></span></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member1:</span></td>
      <td>
        <input type="text" name="g2_tm1" size="15" value="<%=s10%>">
      </td>
      <td><span class="style5"><a href="teamworkers/tm5.jsp">SELECT</a></span></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member2: </span></td>
      <td>
        <input type="text" name="g2_tm2" size="15" value="<%=s12%>">
     </td>
      <td><span class="style5"><a href="teamworkers/tm6.jsp">SELECT</a></span></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member3: </span></td>
      <td>
        <input type="text" name="g2_tm3" size="15" value="<%=s14%>">
     </td>
      <td><span class="style5"><a href="teamworkers/tm7.jsp">SELECT</a></span></td>
    </tr>
    <tr>
      <td><span class="style3">Team Member4:</span></td>
      <td>
        <input type="text" name="g2_tm4" size="15" value="<%=s16%>">
     </td>
      <td><span class="style5"><a href="teamworkers/tm8.jsp">SELECT</a></span></td>
    </tr>

  </table>
 <div id="Layer7" style="position:absolute; left:-357px; top:-112px; width:290px; height:31px; z-index:7">
  <table width="288">
    <tr>
      <td width="132"><span class="style3">Task No 1 </span></td>
      <td width="144">
        <input type="text" name="task1" value="<%=1%>">
     </td>
    </tr>
  </table>
</div>
  
<div id="Layer8" style="position:absolute; left:-14px; top:-109px; width:251px; height:30px; z-index:8">
  <table width="311" >
    <tr>
      <td width="135"><span class="style3">Task No 2 </span></td>
      <td width="164">
        <input type="text" name="task2" value="<%=2%>">
      </td>
    </tr>
  </table>
</div>

<div id="Layer9" style="position:absolute; left:-358px; top:-76px; width:674px; height:29px; z-index:9">
  <table width="674">
    <tr>
      <td width="135"><span class="style3">Actual Start Date </span></td>
      <td width="194">
        <input type="text" name="startdate">
      </td>
      <td width="135"><span class="style3">Actual End Date </span></td>
      <td width="190">
        <input type="text" name="enddate">
      </td>
    </tr>
  </table>
</div>
<div id="Layer10" style="position:absolute; left:-354px; top:-38px; width:294px; height:23px; z-index:7">
  <table width="296" >
    <tr>
      <td width="130">Group Type </td>
      <td width="154">
        <input type="text" name="Gtype1" value="<%=1%>">
 </td>
    </tr>
  </table>
</div>
<div id="Layer11" style="position:absolute; left:-18px; top:-42px; width:315px; height:24px; z-index:8">
  <table width="314" >
    <tr>
      <td width="135">Group Type </td>
      <td width="167">
        <input type="text" name="Gtype2" value="<%=2%>">
  </td>
    </tr>
  </table>
</div>

</div>





<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr>
    <td width="13" height="108">&nbsp; </td>
    <td width="947" height="108" >
      <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
      </center></td>
    <td width="9" height="108">&nbsp;</td>
    <td width="33" height="108" align="right">&nbsp;</td>
  </tr>
</table>
<table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
    <td width="149"><a href="home.jsp"><font size="2" color="#FFFFFF">HOME</font></a></td>
    <td width="150">&nbsp;</td>
    <td width="250">&nbsp;</td>
    <td width="163"><a href="hrmenu.jsp"><font color="#FFFFFF" size="2">BACK</font></a></td>
  </tr>
</table>
<div align="center"></div>
<table width="23%" border="1">
  <tr> 
    <td bgcolor="#CCCCFF"><div align="center"><span class="style1">Allotment Details 
        </span></div></td>
  </tr>
</table>
<p align="center">&nbsp;</p>
<p align="center">&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
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

