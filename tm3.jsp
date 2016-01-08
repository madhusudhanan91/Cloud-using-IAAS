<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" %>

<html>
<head>
	
	<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: 16px}
body {
	background-color: #FFFFFF;
}
-->
    </style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"></head>
	<body>
	
	<%
	Connection con=null;
	Statement st=null;	
	   try
             {
		   Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
	        ResultSet rs=st.executeQuery("select * from employment_details where emp_designation='TM'");
	        ResultSetMetaData rsmt=rs.getMetaData();         
		%>
    <table width="758"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
      <tr valign="top">
        <td>
          <table width="758" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
            <tr>
              <td height="108" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font>  
            </center></td>
            </tr>
          </table>
          
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="93"><a href="logout.html" class="nav" title="Contact Us" target="right1"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
        </tr>
      </table>
    </table>		
    <center>
  <h1 class="style10"> <font face="Arial, Helvetica, sans-serif">TEAM MEMBER DETAILS</font></h1>
      <hr>
      <p class="style10">&nbsp;</p>
    </center>
		<table width="100%" border=1 cellspacing=0>

	<form name="form1" method="post" action="allotproject.jsp">               
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
			
				<input type=radio name=select3 value=<%=j%>>							<% out.println(j); %>
				
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
	               
			<p>
		    <%

                        
			
			}
			catch(Exception e) 
			 { 
			 out.println(e);
			 }
	
			%>
</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			 <center><input type="submit" name="Submit" value="SELECT">
			  <input type="reset" name="Submit2" value="Reset"></center> 
                            
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;            </p>
</body>
</html>
	   

      		