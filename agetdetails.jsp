﻿<%@ page contentType="text/html; charset=" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="databaseconnection.*"%>
<html>
<head>
<title>Agent-Distributor files</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Your website name | Homepage</title>

<!-- This template was created by Mantis-a [http://www.mantisa.cz/]. For more templates visit Free website templates [http://www.mantisatemplates.com/]. -->

<meta name="Description" content="..." />
<meta name="Keywords" content="..." />
<meta name="robots" content="all,follow" />
<meta name="author" content="..." />

<!-- Javascript -->
<meta http-equiv="Content-Script-Type" content="text/javascript" />

<!-- CSS -->
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection, tv" />
<link rel="stylesheet" href="css/style-print.css" type="text/css" media="print" />

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
</head>
<script type="text/javascript">

function open1(){
    window.location = "http://localhost:8080/dataleakage/changepass.jsp"
}
function open2(){
    window.location = "http://localhost:8080/dataleakage/editagent.jsp"
}


</script>
<body>
<form name="form"  action="" onSubmit="return valid();" method="post"  >


<%

 Connection con=null;
 Connection con1=null;
	Statement st=null;
	Statement st1=null;
	ResultSet rs=null;
	ResultSet rs1=null;
	String uname=(String)session.getAttribute("username");
	String sql="select * from register where username='"+uname+"'";
	//String sql1="select filename from register where username!='"+uname+"'";
	String pass=null,email=null;
	int userid=0;
	try
	{
		con=databasecon.getconnection();
		
		st=con.createStatement();
		
		rs=st.executeQuery(sql);
		//session.setAttribute( "id", n );
		while(rs.next())
		{
		userid=rs.getInt(3) ;
		pass=rs.getString(4);
		email=rs.getString(5);
		}

	
	%>

  <div id="wrapper"> 
    <!-- Header -->
    <div id="header"> 
      <!-- Your website name  -->
      <h1><font color="#FFFFFF"> 
        <marquee direction="right">
        FRAUD DETECTION SERVICE 
        </marquee>
        </font></h1>
      <!-- Your website name end -->
      <!-- Your slogan -->
      <h2></h2>
      <!-- Your slogan end -->
      <div id="header-arrow"></div>
    </div>
    <!-- Header end -->
    <!-- Menu -->
    <a href="#skip-menu" class="hidden">Skip menu</a> 
    <ul id="menu" class="cleaning-box">
      <li class="first"><a href="agenthome.jsp" class="active">HOME</a></li>
      <li><a href="Agentdistributorfiles.jsp">Distributor Files</a></li>
      <li><a href="viewkey.jsp">View Key</a></li>
      <li><a href="agentfile.jsp">Agent Files</a></li>
      <li><a href="agentsend.jsp">Compose</a></li>
      <li><a href="agetdetails.jsp">My Account</a></li>
      <li><a href="index.html">LogOut</a></li>
    </ul>
    <!-- Menu end -->
    <hr class="noscreen" />
    <div id="content-box"> 
      <div id="content-box-in"> 
        <!-- Content left -->
        <div class="content-box-left"> 
          <div class="content-box-left-in"> 
            <h4>AGENT DETAILS</h4>
            <div align="center" style="background-color: #D3E1ED"> 
              <table>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>UserName</strong></font></td>
                  <td>:</td>
                  <td><font size="2"> 
                    <%=uname%>
                    </font></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>UserId</strong></font></td>
                  <td>:</td>
                  <td><font size="2"> 
                    <%=userid%>
                    </font></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>Password</strong></font></td>
                  <td>:</td>
                  <td><font size="2"> 
                    <%=pass%>
                    </font> </td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td><font color="#660000" size="2"><strong>E-Mail</strong></font></td>
                  <td>:</td>
                  <td><font size="2"> 
                    <%=email%>
                    </font></td>
                </tr>
                <tr> 
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr> 
                  <td></td>
                  <td><input style="background: url('../img/submit.jpeg')" type="button" name="edit" value="Edit" onClick="open2()" ></td>
                  <td></td>
                </tr>
              </table>
            </div>
          </div>
        </div>
        <!-- Content left end -->
        <hr class="noscreen" />
        <!-- Content right -->
        <div class="content-box-right"> 
          <h4>Welcome 
            <%=session.getAttribute("username")%>
            !</h4>
          <div class="content-box-right-in"> 
            <dl>
              <dt><br />
                <a href="#"><img src="img/fileview.jpg" width="120" height="90" " /></a> 
              </dt>
            </dl>
          </div>
          <div class="content-box-right-in"></div>
          <div id="column-right-bottom">&nbsp;</div>
        </div>
        <!-- Content right end -->
        <div class="cleaner">&nbsp;</div>
      </div>
    </div>
    <hr class="noscreen" />
    <!-- Footer -->
    <!-- Footer end -->
  </div>
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
