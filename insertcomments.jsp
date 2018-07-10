<title>Insert comments</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					
					
					
				
					
					String tname=(String)application.getAttribute("tname");
					String user=(String)application.getAttribute("user");
					String tcomment=request.getParameter("tcomment");
					try {
						
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

						Date now = new Date();
						
						String strDate = sdfDate.format(now);
						String strTime = sdfTime.format(now);
						String dt = strDate + "   " + strTime;
         
    	
						PreparedStatement ps=connection.prepareStatement("insert into tcomments(tname,commented_user,comment,date) values(?,?,?,?)");
						ps.setString(1,tname);
						ps.setString(2,user);	
						ps.setString(3,tcomment);
						ps.setString(4,dt);
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							request.setAttribute("msg","successfull");
							out.print("Your Feedback posted Successfully");
							
			%>
			<p><a href="tweet_searchmain.jsp">Back</a>         <a href="index.html">Home</a> </p>

			
			<%
					   }
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
