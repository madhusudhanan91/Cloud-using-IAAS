<%@ page import="java.sql.*,java.lang.*,databaseconnection.*"%>
<html>
<head>

<title>Registration Insert Page</title>




  
       <% 
        try
                {
				
        //String a=(String)session.getAttribute( "id" );
		int a1=(Integer)(session.getAttribute( "id" ));
        String b=request.getParameter("cname");		
        String  c=request.getParameter("email"); 
		String d=request.getParameter("pass");
	   String e=request.getParameter("utype");
	   
	  	  
       Connection con=databasecon.getconnection();
        Statement st=con.createStatement();
		
        String sql="insert into reg(id,name,email,password,usertype) values ('"+a1+"','"+b+"','"+c+"','"+d+"','"+e+"')";
		
        int x=st.executeUpdate(sql);
		if(x!=0){
		response.sendRedirect("home.jsp");
		}
				else{
		response.sendRedirect("companyregistration.jsp?message=fail");
		}
        con.close();
        st.close();
        }
        catch(Exception e)
                {
        out.println(e);
		
        }
        %>
       
  
        
  
</center>
  
       
  
        
  
        </td>
      
     
      
    </tr>
    
  </table>
  <!-- End ImageReady Slices -->




