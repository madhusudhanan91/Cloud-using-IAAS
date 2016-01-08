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
function fu()
{

//var a = document.LoginForm.id.value;
var b = document.LoginForm.cname.value;
///var c = document.LoginForm.utype.value;
var d = document.LoginForm.pass.value;
var e = document.LoginForm.email.value;



/*if(a=="")
{
alert("Enter ID");
document.LoginForm.id.focus();
return false;
}*/

if(b=="")
{
alert("Enter Company Name");
document.LoginForm.cname.focus();
return false;
}
if(e=="")
{
alert("Enter E-MailId");
document.LoginForm.email.focus();
return false;
}
var emailfilter=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/i
    var k=emailfilter.test(e);
    if(k==false)
    {
        alert("Please enter a valid mail Id");
	document.LoginForm.email.focus();
        return false;
    }


if(d=="")
{
alert("Enter Password");
document.LoginForm.pass.focus();
return false;
}
if(d.length<5) {
alert("Password should have Five Characters");
            document.LoginForm.pass.focus();
            document.LoginForm.pass.value="";
return false;
}

if(document.LoginForm.utype.selectedIndex==0)
{
alert("Select UserType");
document.LoginForm.utype.focus();
return false;
}

}

</script>
</head>

<body>
<form name="LoginForm" action="companyreginsert.jsp" method="post" onSubmit="return fu();">
 <%
 int n=0,s=0;
 Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select max(id) from reg";
try
	{
		con=databasecon.getconnection();
		st=con.createStatement();
		rs=st.executeQuery(sql);
		if(rs.next())
		{
		if(rs.getInt(1)==0)
		n=1;
		else
		n=rs.getInt(1)+1;
		session.setAttribute( "id", n );
		
		}
	//out.print(n);
	
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
            <p> <strong><font size="+1"><font color="#CCCCFF" size="5"></font></font></strong></p></td>     
          
          <td></td>
        </tr>
		</table></td>
	</tr>			
</table>
   <table ><tr ><td width="150"></td>&nbsp;&nbsp;<td width="120"></td><td width="421" align="center">


<div align="center" id="login-box">

          <H2><font color="#66CCFF" size="4"> CREATE ACCOUNT </font></H2>
            
           
		  <div>&nbsp;</div><div>&nbsp;</div><div><table>
		   <tr>
                <td><strong><font size="2">ID</font></strong></td>
                <td>:</td><td><input  style="background-color: #000000;font: bold 12px Arial" name="id" value="<%=n%>" type="textbox" disabled="true" ></td></tr>
		  <tr><td>&nbsp;</td></tr>
		  <tr>
                <td><strong><font size="2">Company Name</font></strong></td>
                <td>:</td><td><input style="background-color: #000000;font: bold 12px Arial" name="cname" type="text"></td></tr>
		  <tr><td>&nbsp;</td></tr>
		    <tr>
                <td><strong><font size="2">EmailID</font></strong></td>
                <td>:</td><td><input style="background-color: #000000;font: bold 12px Arial" name="email" type="text"></td></tr>
			 <tr><td>&nbsp;</td></tr>
			 <tr>
                <td><strong><font size="2">Password</font></strong></td>
                <td>:</td><td><input style="background-color: #000000;font: bold 12px Arial" name="pass" type="password"></td></tr>
				<tr><td>&nbsp;</td></tr>
				 <tr>
                <td><strong><font size="2">User Type</font></strong></td>
                <td>:</td>
                <td><select style="background-color: #52555C ;height: 25px; width: 120px;font: bold 12px Arial" name="utype"><option value="select">--Select--</option><option value="On Demand">On Demand</option><option value="Opportunistic">Opportunistic</option></select></td>
              </tr>
				<tr><td>&nbsp;</td></tr>
				
				<tr><td><input name="login" type="submit" style="background-color: #52555C ;height: 25px; width: 100px;font: bold 14px Arial" value="Submit">
                </td>
                <td></td>
                <td> <input name="clr" type="reset" style="background-color: #52555C ;height: 25px; width: 100px;font: bold 14px Arial" value="Clear">
                </td></tr>
		  </table></div>			  
		  <div>

		  </div>

           
		   
          <div></div><div></div></p>
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
