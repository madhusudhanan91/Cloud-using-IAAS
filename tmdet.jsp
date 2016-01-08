<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
body {
	background-color: #FFFFFF;
}
.style9 {font-size: 24px}
.style10 {font-size: 16px}
-->
    </style>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
</script>
</head>
	<body>
	
	<div id="Layer1" style="position:absolute; left:38px; top:41px; width:139px; height:81px; z-index:1"><img src="pictures/11400410.jpg" width="140" height="83"></div>
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
          <table width="974" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
            <tr>
              <td height="108">&nbsp; </td>
              <td height="108" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION MANAGEMENT SERVICE </font> 
            </center></td>
              <td height="108">&nbsp;</td>
              <td align="right" height="108">&nbsp;</td>
            </tr>
          </table>
          <table width="972" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
            <tr align="center">
              <td width="89"><a href="home.html" ><font size="2" color="#FFFFFF">HOME</font></a></td>






              <td width="10">&nbsp;</td>
              <td width="83">&nbsp;</td>

              <td width="93"><a href="" class="nav" title="Contact Us" target="right1"><font size="2" color="#FFFFFF">CONTACT US</font></a></td>
            </tr>
          </table>
    </table>		
    <center><h1 class="style10">
		TEAM LEADER Details</h1>
      <hr>
      <p class="style10">&nbsp;</p>
    </center>
		<table border=1 cellspacing=0>

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
			
				<input type=checkbox name=select value=<%=j%>>							<% out.println(j); %>
				
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
	   

      		