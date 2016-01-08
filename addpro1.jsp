<%@ page language="java" import="java.sql.*,java.io.*" %>
<html>
<head>
<meta name="GENERATOR" content="Microsoft FrontPage 4.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Add project</title>
<script language="JavaScript">	

   
   
</script>
<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
//-->
function valid()
{
	var a=f1.prname.value;
	var b=f1.prcode.value;
	var c=f1.plcode.value;
	var d=f1.env.value;
	var e=f1.clname.value;
	var f=f1.claddr.value;
	var g=f1.stdate.value;


if(a=="")
{
alert("ENTER PROJECT NAME!!");
f1.prname.focus();
return false;
}
if(b=="")
{
alert("ENTER PROJECT CODE!!");
f1.prcode.focus();
return false;
}
if(c=="")
{
alert("SELECT PROJECT LEADER CODE!!");
f1.prcode.focus();
return false;
}
if(d=="")
{
alert("ENTER THE ENVIRONMENT!!");
f1.env.focus();
return false;
}
if(e=="")
{
alert("ENTER CLIENT NAME!!");
f1.clname.focus();
return false;
}
if(f=="")
{
alert("ENTER CLIENT ADDRESS!!");
f1.claddr.focus();
return false;
}
if(g=="")
{
alert("ENTER START DATE!!");
f1.stdate.focus();
return false;
}

}
</script>
<style type="text/css">
<!--
.style3 {color: #330000; font-weight: bold; }
.style9 {font-size: 24px}
-->
</style>
</head>
<body>
<div id="Layer1" style="position:absolute; left:358px; top:243px; width:413px; height:377px; z-index:1">

	<%!
		Statement st,st1;
		ResultSet rs,rs1;
		Connection con=null;
		String s3;
		String s4;
	%>
	<%
		String s1=request.getParameter("select");
		if(s1!=null)
		{
			int a= Integer.parseInt(s1);
			try {
				Class.forName("com.mysql.jdbc.Driver");	
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
				 st=con.createStatement();
				 rs=st.executeQuery("select emp_code from employment_details where emp_designation='PL'");
				
				while(rs.next())
				{
					if(a==rs.getRow())
					{
					s3=rs.getString("emp_code");												    
					}
				}
		           } catch(Exception e)
				 {
					
				} 
	       }
	%>
  <form name="f1" method="post" action="addprocode.jsp" onsubmit="return valid()">
    <table width="398" border="1">
      <tr>
        <td width="143"><span class="style3">Project Name : </span></td>
        <td colspan="2"><input type="text" name="prname"></td>
      </tr>
      <tr>
        <td><span class="style3">Project Code : </span></td>
        <td colspan="2"><input type="text" name="prcode"></td>
      </tr>
      <tr>
        <td><span class="style3">PL Employee code: </span></td>
        <td width="144"><input name="plcode" type="text" value="<%=s3%>"></td>
        <td width="44" bgcolor="#9999FF"><span class="style3"><a href="pld.jsp">Select</a></span></td>
      </tr>
      <tr>
        <td><span class="style3">Environment : </span></td>
        <td colspan="2"><input type="text" name="env"></td>
      </tr>
      <tr>
        <td><span class="style3">Client Name : </span></td>
        <td colspan="2"><input type="text" name="clname"></td>
      </tr>
      <tr>
        <td><span class="style3">Client Address: </span></td>
        <td colspan="2"><textarea name="claddr" rows="3" cols="15"></textarea></td>
      </tr>
      <tr>
        <td><span class="style3">Project Start Date : </span></td>
        <td colspan="2"><input type="text" name="stdate"></td>
      </tr>
    </table>
    <p align="center">
      <input type="submit" name="Submit" value="ALLOT">
      <input name="Reset" type="reset" id="Reset" value="CLEAR">
    </p>
  </form>
</div>
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
    <td width="50%"><a href="hrmenu.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></td>
    <td width="50%"><a href="logout.html"><font color="#FFFFFF" size="2">LOGOUT</font></a></td>
  </tr>
</table>
<p align="center" class="style9"><font color="#000099">Add New Project</font></p>
<hr>
<TABLE width="346" >
<TR>
<TD>
 <table width="320">
  <TR>
  <TD width="335" > <p><strong><u><font>About this Slide:</font></u></strong> <font color="#000099">This slide will help the Project manager to allocate the project to a particular Project Leader and Group Leader according to their experience and talent. Project manager will allocate the project name, project code to a particular project leader and Group Leader, and also make a point of start date. This will help the project manager to intimate about the completion time of the project.To see the project leader and group leader according to their experience and exposure, Project Manger can select with the help of button that are provided side to the text box.</font><br>    
          <br>  
      </p>    </TD>
  <TD width="10">&nbsp;	</TD>          
   </TR>
  </table>
  </TD>
 </TR>
 <TR>
 <TD>
<center>

</center>
  </TD>
  </TR>
</TABLE>
</body>
</html>