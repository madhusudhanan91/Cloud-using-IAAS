<%@ page import="java.sql.*,databaseconnection.*"%>
<html>
<head>
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

var b = document.LoginForm.username.value;
var d = document.LoginForm.password.value;

if(b=="")
{
alert("Enter User Name");
document.LoginForm.username.focus();
return false;
}

if(d=="")
{
alert("Enter Password");
document.LoginForm.password.focus();
return false;
}
if(d.length<5) {
alert("Password should have Five Characters");
            document.LoginForm.password.focus();
            document.LoginForm.password.value="";
return false;
}

}
</script>

</head>

<body>
<form action="logininsert.jsp" method="post" name="LoginForm" onSubmit="return fu();">
 <table width="710" border="0" align="center" cellpadding="0" cellspacing="0">
	
	
	<tr>
		<td><img src="images/img2.jpg" alt="" width="710" height="256" /></td>
	</tr>
	<tr>
		<td height="128" style="height: 45px; background: url(images/img1.jpg);">
		<table width="670" border="0" align="center" cellpadding="0" cellspacing="0">
			
          <tr> 
           
          </tr>
		</table></td>
	</tr>			
</table>
   <table ><tr ><td width="150"></td>&nbsp;&nbsp;<td width="120"></td><td width="421" align="center">


<div align="center" id="login-box">

          <H2><font size="4">Login</font></H2>
            <br />
            <div id="login-box-name" style="margin-top:20px;">USERNAME:</div>
            <div id="login-box-field" style="margin-top:20px;"><font color="#000033"><input name="username" class="form-login" title="Username" value="" size="30" maxlength="2048" /></font></div>
            <div id="login-box-name">PASSWORD:</div>
            <div id="login-box-field"><font color="#000033"><input name="password" type="password" class="form-login" title="Password" value="" size="30" maxlength="2048" /></font></div>
          <p><br />
            <span class="login-box-options"> <a href="companyregistration.jsp" style="margin-left:30px;">New User?</a></span> <br />
          </p>
          <div><font ><input name="login" type="submit" style="background-color: #336699 ;height: 25px; width: 100px;font: bold 14px Arial" value="Login"></font>
          </div>
          <div></div><div></div></p>
        </div>

</div></td><td width="148"></td><td width="76"></td></tr></table>
<table width="710" border="0" align="center" cellpadding="0" cellspacing="0">
	
	<tr>
		<td align="center"><img src="images/spacer.gif" alt="" width="50" height="30" /></td>
	</tr>
	<tr>
		
      <td class="text1" style="height: 45px; background: url(images/img1.jpg);"></td>
	</tr>
	
</table>
	
</form>
</body>
</html>
