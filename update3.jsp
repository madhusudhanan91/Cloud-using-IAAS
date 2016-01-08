<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<style type="text/css">
<!--
.style9 {font-size: 24px}
.style10 {font-size: 14px}
.style11 {color: #0000FF}
.style12 {
	color: #330000;
	font-weight: bold;
}
-->
</style>
</head>
<body bgcolor="#FFFFFF">

	<%! 
		Statement st;
		ResultSet rs;
		Connection con=null;
	%>
	
	<%
		String prcode=request.getParameter("prcode");
		String code=request.getParameter("code");
		String a="";
		String b="";
		String c="C";
//		session.setAttribute("empid",prcode);
		
	%>

	<%
		try
			{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
			}
		catch(Exception e)
			{
			System.out.println(e);
			}
	%>
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
          <td width="100%"><div align="center"><a href="plmenu.jsp" ><font size="2" color="#FFFFFF">BACK</font></a></div></td>
        </tr>
      </table>
    </table>
    <center>
  <h1 class="style10 style11"> <font size="3">Employee Duration View</font></h1>
      <hr>
      
  <p class="style10">
    <%
		String str="select w.*, d.extends from workerdocument w, dateex d where w.Workerid = d.empid"; // where plcode='"+code+"'and status='"+c+"'";
//		String strr="select * from dateex";
		try
			{
			int i=0;
			st=con.createStatement();
			rs=st.executeQuery(str);
//			ResultSet rss = st.executeQuery(strr);
			%>
  </p>
</center>
 <table width="100%" border="1">
    <tr> 
      <td width="8%"><span class="style12">Emp Code</span></td>
      <td width="13%"><span class="style12">Doc Name</span></td>
      <td width="27%"><span class="style12">Pro Name</span></td>
      <td width="11%"><span class="style12">Pro Code</span></td>
      <td width="14%"><span class="style12">Open Date</span></td>
      <td width="12%"><span class="style12">Close Date</span></td>
      
    <td width="15%"><span class="style12">Date Extend</span></td>
    </tr>
    <%
			
			while(rs.next())
			{
			%>
    <tr> 
      <td><%= rs.getString(1)%></td>
      <td><%= rs.getString(2)%></td>
      <td><%= rs.getString(3)%></td>
      <td><%= rs.getString(4)%></td>
      <td><%= rs.getString(5)%></td>
      <td><%= rs.getString(6)%></td>
	  <% String extend = rs.getString(7);
	  if(extend.equals("Yes")){
	  %>
	  <td><a href="extends.html"><%= extend%></a></td>
	  <% }
	  else %>
	  <td><%= extend%></td>
    </tr>
    <%
			}
			%>
  </table>
  <br>
<%
			}
		catch(Exception f)
		{
		System.out.println("Finding error"+f);
		}
	%>
<br>
<br>
</body>
</html>		