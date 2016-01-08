<%@ page language="java" import="java.sql.*,java.io.*,java.util.*" %>

<html>
<head>
<style type="text/css">
<!--
.style9 {font-size: 24px}
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
<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
      <tr valign="top">
        <td>
          <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
            <tr>
              <td height="108" >
                <center class="style9">
              <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
            </center></td>
            </tr>
          </table>
          
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="50%"><a href="addpro1.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></td>
          <td width="50%"><a href="logout.html" ><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
        </tr>
      </table>
    </table>
	<%
	Connection con=null;
	Statement st=null;	
	   try
             {
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
	    ResultSet rs=st.executeQuery("select * from employment_details where emp_designation='PL'");
	    ResultSetMetaData rsmt=rs.getMetaData();         
		%>
		<center><h1 class="style9">
		Project Leader Details</h1>
		  <hr>
</center>

<form name="form1" method="post" action="addpro1.jsp"> 
		<table width="100%" border=1 cellspacing=0>

			              
			<tr>
				<%for(int i=1;i<=rsmt.getColumnCount();i++){    %>
				<td>   <%= rsmt.getColumnName(i) %>	</td>  <%  }   %>
           </tr>
		   <%
			String s2=null;
		    int j=1;
		    while(rs.next())  { 	%>
				<td><input type="radio" name=select value=<%=j%>>	<% out.println(j); %></td>
	        <tr>	<%	for(int i=1;i<=rsmt.getColumnCount();i++){	%>
				
               	<td><%= rs.getString(i) %></td> <% }
			     j++;
			     %>
          </tr><% }%>
	</table>
	               
			<p>
		    <%
			}catch(Exception e) 	 { 		 out.println(e);		 }
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
	</form>
	</body>
</html>
	   

      		