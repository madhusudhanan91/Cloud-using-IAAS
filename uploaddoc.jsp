<%@ page language="java" import="java.sql.*,databaseconnection.*" pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<html>
<head>
<script type="text/javascript">
function val()
{
var a = document.f1.name.value;

if(a=="")
{
alert("Enter file name:");
document.f1.name.focus();
return false;
}

if(document.f1.filename.value=="")
{
alert("Please upload your file");
document.f1.filename.focus();
return false;
}
}





</script>
<title>Uploading documents</title>
</script>
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style3 {
	color: #000099;
	font-weight: bold;
}
.style4 {color: #330000}
.style9 {font-size: 24px}
-->
</style>
</head>

<body>
<form name="f1" action="uploaddocu.jsp"  enctype="multipart/form-data" onSubmit="return val()" method="post">
<div id="Layer2" style="position:absolute; left:228px; top:267px; width:393px; height:182px; z-index:2">
  <p>&nbsp;</p>
  <p class="style3" align="center"> <u>Upload your document here	</u></p>
  <p class="style3">&nbsp; </p>
  <p class="style3">&nbsp;	</p>
  <p class="style3">&nbsp;	</p>
</div>
<div id="Layer3" style="position:absolute; left:210px; top:339px; width:440px; height:64px; z-index:3">
  <p class="style4">&nbsp;</p>
  <p class="style4">Enter document name:&nbsp;<input type="text" name="name"></p>

 
 <p class="style4">Attach document here:<input type="file" name="filename" width=50%></p>
 
 <p class="style4"  align="center"> <input type="submit" name="sub" align="right" value="Send"></p>
  
</div>

 </form>
<table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
  <tr>
    <td width="100%" height="108" >
      <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
      </center></td>
  </tr>
</table>
<table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
    <td width="100%"><font color="#FFFFFF" size="2">
      <div align="right"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font> 
        </a></div></td>
  </tr>
</table>
<p align="center" class="style9"><strong>Team Leader Menu </strong></p>
<p class="style3"><marquee align="left" behavior="alternate" direction="left">Upload the documents....</marquee></p>
<p>&nbsp;</p>
<hr>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p></p>
<hr>
<p></p>
<%
 	String temp=null;
 	
 	temp=request.getParameter("message");
 	
 	if(temp!=null && temp.equalsIgnoreCase("success"))
 	{
 %>
 <br>

 		<table align="center" width="829"  height="30" cellspacing="1" cellpadding="1" style="border: 1px #A0A0A0 solid;">
 			<tr>
 				
      <td width="823"  height="30" align="center" class="paragraping"> <font color="red" face="verdana" size="3"> 
        <b>Your Document has been Uploaded to your TEAM MEMBERS Successfully !!!</b><br>
						
 					</font>
 				</td>
 			</tr>
 		</table>
		</td>
</tr>
</table>
 <%
 	}
  %>

