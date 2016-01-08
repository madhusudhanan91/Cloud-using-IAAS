<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" %>

<html>
<head>
	
	<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: 16px}
.style11 {color: #000099}
-->
    </style>
</head>
	<body>
	
	<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
      <tr valign="top">
        <td>
          <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr> 
          <td width="852" height="108" > <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
        </tr>
      </table>
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="215"><a href="home.html" ><font size="2" color="#FFFFFF">HOME</font></a></td>
          <td width="423"><font color="#FFFFFF" size="2"><a href="allotproject.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></font></td>
          <td width="331"><font color="#FFFFFF" size="2"><a href="logout.html">SIGN 
            OUT</a></font></td>
        </tr>
      </table>
    </table>
	
<%
	Connection con=null;
	Statement st=null;
	ResultSet rs1 = null;	
	   try
             {
		   Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		    st=con.createStatement();
            ResultSet rs=st.executeQuery("select * from employment_details where emp_designation='GL'");
	        ResultSetMetaData rsmt=rs.getMetaData();
			
			
		 
		%>
<div id="Layer2" style="position:absolute; left:10px; top:161px; width:245px; height:59px; z-index:2"> 
  <table width="247" height="55">
    <tr> 
      <td width="117" height="21" bgcolor="#FFFFFF"><div align="center"><strong>Prname</strong></div></td>
      <td width="114" bgcolor="#FFFFFF"><div align="center"><strong>prCode 
          </strong></div></td>
		  <td width="114" bgcolor="#FFFFFF"><div align="center"><strong>PLCode 
          </strong></div></td>
    </tr>
    <tr> 
      <td><%=session.getValue("prname")%></td>
      <td><div align="center"><%=session.getValue("prcode")%></div></td>
	  <td><%=session.getValue("plcode")%></td>
    </tr>
  </table>
  
  
</div>
<center><h1 class="style10 style11">
		Group Leader Details</h1>
		  <hr>
		  <p class="style10">&nbsp;</p>
		</center>
		<form name="form2" method="post" action="allotproject.jsp">  
		<table width="100%" border=1 cellspacing=0>
                <tr>

				<tr>
		<%
			
                  for(int i=1;i<=rsmt.getColumnCount();i++)
                  {
                  %>
			<td>
		     <%= rsmt.getColumnName(i) %>
			</td>
			
		  <%
		   }
		   %>
      </tr>
		   <%
	            String s2=null;
		    int j=1;
		    while(rs.next())
            	       {
			%>
				<td>
		<input type="radio" name=select value=<%=j%>>			
				</td>
			        <tr>
			<%
			
                         for(int i=1;i<=rsmt.getColumnCount();i++)
                           {
				%>
				
                             	<td>
				<%= rs.getString(i) %>
				</td>
			  <%
                           }
			j++;
			%>
                      </tr>
			<%
	                  }
			%>
	</table>
	               
			
<%
			}
			catch(Exception e) 
			 { 
			 out.println(e);
			 }
	
			%>
			<%
  try
  {
  String zs =request.getParameter("prcode");
  String ss = "select * from com_project where pro_code='"+zs+"'";
		
		rs1=st.executeQuery(ss);
		while(rs1.next())
			{
	     session.putValue("prname",rs1.getString(1));
		session.putValue("prcode",rs1.getString(2));
         session.putValue("plcode",rs1.getString(7));        }  
		 }
		 
		 catch(Exception w)
		 {
		 }%>
      		
			
	 <center><input type="submit" name="Submit" value="SELECT">
	  <input type="reset" name="Submit2" value="Reset"></center> 
 </form>
</body>
</html>
	   
