<%@ page language="java" import="java.io.*,java.sql.*" %>
<html>
<head>
	
</head>
<body>
	<%
		String prcode=request.getParameter("prcode");
		String nod=request.getParameter("nod");
		String c="COMPLETED";
	
	%>

	<%!
		PreparedStatement st;
		ResultSet rs;
		Connection con=null;
	%>

	<%
		try
			{
			Class.forName("com.mysql.jdbc.Driver");	
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movedb","root","admin");
			}
		catch(Exception e)
			{
			out.println(e);
			}
	%>
		
	<%
		
	
		String strr = "select * from status where pro_code in('"+prcode+"') and per_work != 100");
		System.out.println("select * from status where pro_code in('"+prcode+"') and per_work != 100");
		try {
			rs =st.executeQuery(strr);
			if(rs.next()) {
							
			}

			else {
			String str="update com_project set status='"+c+"' where pro_code='"+prcode+"'";
				st=con.prepareStatement(str);
				st.executeUpdate();
			}
			}
			catch(Exception f)
			{
			out.println(f);
			}
		}
		%>
</body>
</html>
