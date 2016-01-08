<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
<title>Service</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="Description" content="..." />
<meta name="Keywords" content="..." />
<meta name="robots" content="all,follow" />
<meta name="author" content="..." />

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />

<!-- CSS -->
<link href="default.css" rel="stylesheet" type="text/css" />
<link href="login-box.css" rel="stylesheet" type="text/css" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<script language="JavaScript">


</script>
</head>

<body>
<form action="" method="get" name="LoginForm" >

<%

 Connection con=null;
	Statement st=null;
	Connection con1=null;
	ResultSet rs=null;
	
	//Blob file1=null,file2=null ;
	//byte[] bdata1=null,bdata2=null;
	 
	String sql="select * from log ";
	
	try
	{
		con=databasecon.getconnection();
		st=con.createStatement();
		rs=st.executeQuery(sql);
		
		//session.setAttribute( "id", n );
		

	
	%>

 <table width="710" border="0" align="center" cellpadding="0" cellspacing="0">
	
	<tr> 
    <td><img src="images/img2.jpg" alt="" width="710" height="227" /></td>
  </tr>
	
	<tr>
		
      <td height="128" style="height: 45px; background: url(images/img1.jpg);"> 
        <table width="670" border="0" align="center" cellpadding="0" cellspacing="0">
			<tr> 
                
          <td></td><td align="center" width="537"><p><strong><font size="+1"> <font color="#CCCCFF" size="4">&nbsp;IMPROVING 
              UTILIZATION OF INFRASTRUCTURE CLOUDS</font></font></strong></p>
          <p align="center"> <strong><font size="1"><a href="home.jsp"> 
                Logout</a><font color="#CCCCFF" size="5"> </font></font></strong></p> </td>     
          
          <td></td>
        </tr>
		</table></td>
	</tr>			
</table>
   <table ><tr ><td width="150"></td>&nbsp;&nbsp;<td width="120"></td><td width="421" align="center">



          <H2><font color="#66CCFF" size="4">View Service used by user</font></H2>
            <div>&nbsp;</div>
          <div>    <table border="1" width="500" height="" cellpadding="5" cellspacing="5">
                <tr>&nbsp;</tr>
                <tr> 
                  
              <td  height="" class="paragraping"><font color="#319DB0" size="3"><strong>UserName</strong></font></td>
                  <td  class="paragraping"> <font color="#319DB0" size="3"><strong>E-MailID</strong></font></td>
                  <td  class="paragraping"><font color="#319DB0" size="3"> <strong>User Type</strong></font></td>
                  <td  class="paragraping"><font color="#319DB0" size="3"> <strong>Date</strong></font></td>
                </tr>
                <%
				  while(rs.next())
				  {
				   
				  %>
                <tr> 
                  <td  height="" class="paragraping"><font color="#FFFFFF" size="2" > 
                    <%=rs.getString(1)%>
                    </font></td>
                  <td  class="paragraping"> <font color="#FFFFFF" size="2" > 
                    <%=rs.getString(2)%>
                    </font></td>
                  <td  class="paragraping"><font color="#FFFFFF" size="2"> 
                    <%= rs.getString(3)%>
                    </font></td>
                  <td  class="paragraping"><font color="#FFFFFF" size="2"> 
                    <%= rs.getString(4)%>
                    </font></td>
                </tr>
                <% 
				
				 }				  
				  
				  %>
              </table></div><div></div></p>
          <strong></strong> </div>

</div></td><td width="148"></td><td width="76"></td></tr></table>
<table width="710" border="0" align="center" cellpadding="0" cellspacing="0">
	
	<tr>
		<td align="center"><img src="images/spacer.gif" alt="" width="50" height="30" /></td>
	</tr>
	<tr>
		
      <td class="text1" style="height: 45px; background: url(images/img1.jpg);"></td>
	</tr>
	
</table>
	<%
}
catch(Exception e)
	{
		System.out.println(e);
	}
	  finally
	{
		con.close();
		st.close();
		
	}
 
  %>
</form>
</body>
</html>
