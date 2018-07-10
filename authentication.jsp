<title>Data Lineage in Malicious Environments</title>

<%@ include file="connect.jsp" %>

<%
   	String type=request.getParameter("type");
	
	application.setAttribute("type",type);
    try{
         
    	
    	
		if(type.equalsIgnoreCase("user"))
		{
		
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("user",username);
			
			String sql="SELECT * FROM user where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next()){
				
				response.sendRedirect("usermain.jsp");
			}
			else
			{
				response.sendRedirect("wronglogin.jsp");
			}
		}
		
		else if(type.equalsIgnoreCase("server"))
		{
			
			String username=request.getParameter("userid");      
         	String Password=request.getParameter("pass");
			
			application.setAttribute("server",username);
			
			String sql="SELECT * FROM server where username='"+username+"' and password='"+Password+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			
			if(rs.next())
			{
				
				response.sendRedirect("servermain.jsp");
				}
				else
				{
				response.sendRedirect("wronglogin.jsp");
			}	}
			
	}
	catch(Exception e)
	{
		out.print(e);
	}
%>