<%@ page language="java" import="java.io.*" %>
<html>
<head>
<style type="text/css">
<!--
.style9 {font-size: 24px}
.style12 {font-size: x-small}
-->
</style>
<script language="JavaScript" type="text/JavaScript">
<!--
function userCheck()
{
	
	var a=f1.user.value;
	var b=f1.pass.value;


	if(a=="")
	{
		alert ("Please Enter the username");
		f1.user.focus();
		return false;
	}
	
	if(b=="")
	{
		alert("Please enter the password");	
		f1.pass.focus();
		return false;
	}
	

}
//-->
</script>
</head>
<body bgcolor="#ADACB5" >
<div id="Layer6" style="position:absolute; left:580px; top:405px; width:176px; height:21px; z-index:6; font-weight: bold; color: #9933FF;">
  <div align="center"><a href="newuser.html">New User </a></div>
</div>

<div id="Layer4" style="position:absolute; left:551px; top:380px; width:213px; height:21px; z-index:4; font-weight: bold; color: #330000;">
  <div align="center"></div>
</div>
<div id="Layer1" style="position:absolute; left:175px; top:115px; width:0px; height:11px; z-index:7"></div>
<div align="left">
<center>
  <table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
    <tr valign="top">
      <td>
        <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
          <tr>
            <td height="100%" >
              <center class="style9">
                <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
              </center></td>
          </tr>
        </table>
        <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
          <tr align="center">
            <td width="35%"><a href="aboutus.html"><font size="2" color="#FFFFFF">ABOUT US</font></a></td>
            <td width="35%"><a href="empdetails1.html" ><font size="2" color="#FFFFFF">REGISTRATION</font></a></td>
           <td width="30%"><a href="contact.html"><font size="2" color="#FFFFFF">CONTACT US</font></a></td>
          </tr>
        </table>
  </table>
  
 
  <form method="post" action="login.jsp" name="f1" onsubmit="return userCheck()" >
 
    <hr>
    <b><font color="#66CCFF"><a href="help.html" target="_self">Click Here</a></font></b> <b>to get help about this site navigation </b>    <br>
    <table bgcolor="B1C4DE" >
      <tr>
        <td><b><font size="3" color="#5F49B6">Registered Users Login</font></b></td>
      </tr>
    </table>
    <p align="left"> <span class="style12">User - Id</span><b> 
      <input type="text" name="user">
      </b></p>
    <p align="left"><span class="style12">Password</span><b>      
      <input type="password" name="pass">
          <input type="submit" name="b1" value="Login">
    </b></p>
    <p align="left"><font color="#A75A58"><a href="help.html"><font color="#B3574D">Help</font></a>
   
    </font></p>
 
  </form>
  
  
  <hr>
  <p align="left">&nbsp;</p>

</center>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr bgcolor="#CCCCCC">
    <td>&nbsp;</td>
    <td align="right">&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>
