<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!
	Statement st;
	ResultSet rs;
	Connection con=null;
	String workerid;
	String b;
	String a;
	String c;
	String sdate;
	String edate;
			
%>
<%
		try
		{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		st=con.createStatement();
		}
		catch(Exception e)	{	}
		//String ss = session.getAttribute("empid").toString();
		//System.out.println("Session:"+ss);
%>



<html>
<head>
<title>AUTOMATION OF IT PROCESS AND MANAGEMENT</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style1 {color: #9999FF}
.style2 {
	font-size: 22px;
	color: #9933FF;
}
.style9 {font-size: 24px}
-->
</style>
</head>

<body>
	  <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr>
          <td width="893" height="108" >
            <center class="style9">
        <font color="#B1C4DE">AUTOMATION AND MANAGEMENT SERVICE</font> 
      </center></td>
        </tr>
      </table>
	  
  
<table width="100%" height="21" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
  <tr align="center"> 
    <td width="479"><a href="plmenu.jsp"><font size="2" color="#FFFFFF">BACK</font></a></td>
    <td width="498"><strong><font color="#FFFFFF" size="2"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></font></strong></td>
  </tr>
</table>
<br>
<table width="26%" border="1" align="center">
  <tr>
    <td class="style2"><div align="center"><strong>Project Leader</strong></div></td>
  </tr>
</table>
<br>
<table width="17%" border="0" align="center">
  <tr>
    <td><div align="center"><u><strong>Allot Duration </strong></u></div></td>
  </tr>
</table>
<br><form method="post" action="allotduration.jsp">
<%

		String str="select Workerid from workerdocument";
		try
		{
			rs=st.executeQuery(str);
%>

<table width="50%" border="1" align="center">
  <tr> 
      <td width="54%" class="style1">Select the Worker ID </td>
      <td width="46%"><select name="select">
	  <% while(rs.next()){%>
	  <option>
	  <%=rs.getString(1)%>
	  </option>
	  <% }%></select>	<%
	  }catch(SQLException se){System.out.println("Error "+se);}
   	%>
         
        <input type="submit" name="Submit" value="Select"></td>
  </tr>
</table>
  </form>
  <form name="form1" method="post" action="allotdurationvalidation.jsp">
	<% try {
			workerid = request.getParameter("select");
			String sql = "select * from workerdocument where Workerid in ('"+workerid+"')";
			ResultSet rs = st.executeQuery(sql);
			if(rs.next()){
				workerid = rs.getString(1);
				b = rs.getString(2);
				a = rs.getString(3);
				c = rs.getString(4);
				String sq = "select act_start_date, act_end_date from group1 where pro_code in('"+c +"')";
				ResultSet rss = st.executeQuery(sq);
					if(rss.next()){
						sdate = rss.getString(1);
						edate = rss.getString(2);
					}
			}
	  } catch(SQLException se){System.out.println("Error "+se);}
   
		 %>
        <table width="671" height="177" border="1" align="center">
          <tr>
            <td width="319"><div align="justify" class="style1"> Worker ID </div></td>
	        <td width="336"><input type="text" name="workerid" value="<%=workerid%>">  </td>
          </tr>
          <tr>
            <td><span class="style1">Project  Name </span></td>
            <td><input type="text" name="prname"  value="<%=a%>"></td>
          </tr>
          <tr>
            <td><span class="style1">Project Code </span></td>
            <td><input type="text" name="prcode" value="<%=c%>"></td>
          </tr>
          <tr>
            <td><div align="justify" class="style1">Document Name </div></td>
            <td><input type="text" name="docname"  value="<%=b%>"></td>
          </tr>
          <tr>
            <td><div align="justify" class="style1">Start Date </div></td>
            <td><input type="text" name="stdate" ></td>
          </tr>
          <tr>
            <td><div align="justify" class="style1">End Date </div></td>
            <td><input type="text" name="enddate" ></td>
          </tr>
        </table>
        <p align="center">
          <input type="submit" name="Submit2" value="Allot Duration">
  </p>
      </form>
</body>
</html>