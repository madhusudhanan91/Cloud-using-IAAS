<%@ page language="java" import="java.sql.*" pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>


<table width="100%"   bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0">
  <tr valign="top">
    <td>
      <table width="100%" height="80" border="0" cellpadding="0" cellspacing="0" bgcolor="#696969">
        <tr>
          <td width="933" height="108" >
            <center class="style9">
              <font color="#B1C4DE">AUTOMATION OF IT PROCESS AND MANAGEMENT</font>
          </center></td>
       </tr>
      </table>
      <table width="100%" height="22" border="0" cellpadding="0" cellspacing="0" bgcolor="#8F9CBE">
        <tr align="center"> 
          <td width="100%"><a href="logout.html"><font size="2" color="#FFFFFF">LOGOUT</font></a></td>
        </tr>
      </table>
	  <p>&nbsp;</p>
</table>

<table width="29%" border="1" align="center">
  <tr>
    <td><div align="center" class="style9">Team Member Slide </div></td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="655" border="2" align="center" cellspacing="0" cellpadding="0" style="border: 1px #A0A0A0 solid;" bgcolor="#FFFFFF">
  	<tr>
	<td colspan="10"  align="center">Uploaded Files</td></tr>
	<th width="150" class="paragraping" align="left"><font color="#FF0000">&nbsp;&nbsp;&nbsp;Document Name</font></th>
	<th width="140" class="paragraping"><font color="#FF0000">Uploaded Document</font></th>	
	
	<th width="78" class="paragraping"><font color="#FF0000">Delete</font></th>		
	</tr>
  <%
   
  	session.removeAttribute("fileBlob");
  	Connection con=null;   
   String name=null,filename=null;
   
   try
   {
          Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
		 
   
   		PreparedStatement pss=con.prepareStatement("select * from filestored");
       	ResultSet rss=pss.executeQuery();
    
	
    	while(rss.next())
    	{
		session.setAttribute("name",rss.getString(1));
        session.setAttribute("filename",rss.getString(2));
            		name=rss.getString("name");
		
		filename=rss.getString("filename");
	    
%>
	<tr>
		
		
    <td height="33" align="left" class="paragraping"> &nbsp;&nbsp;&nbsp;<%=name%> 
    </td>
		
		<td align="center" class="paragraping">
			<a href="downloaddoc.jsp?name=<%=name%>">Download</a>
		</td>
		<td align="center">
			<a href="deletedoc.jsp?name=<%=name%>" class="paragraping1">Delete</a>
		</td>		
	</tr>	
<%
    	}
    }
    catch(Exception e)
    {}
    finally
    {
    con.close();
    }
   %>  
   </table>