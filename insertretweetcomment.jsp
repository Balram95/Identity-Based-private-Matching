<title>Insert tweets comments</title>
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*,javax.servlet.http.*" %>
<%@ page import="java.sql.*"%>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>


<%
					
					
					
				
					
					String tname=(String)application.getAttribute("tname");
					String user=(String)application.getAttribute("user");
					String t_user=(String)application.getAttribute("t_user");
					String t_cmt=(String)application.getAttribute("cmt3");
					String r_comment=request.getParameter("tcomment");
					
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
						ps.setString(3,r_comment);
						ps.setString(4,dt);
					
						int x=ps.executeUpdate();
						if(x>0)
						{
							request.setAttribute("msg","successfull");
							out.print("Your comment posted Successfully");
							String sql="select rank from tweets where tname='"+tname+"'";
							Statement st=connection.createStatement();
							ResultSet rs=st.executeQuery(sql);
							while(rs.next()){
							int rank=rs.getInt(1);
							int newrank=rank+1;
							String sql1="update tweets set rank='"+newrank+"' where tname='"+tname+"' ";
							Statement st1 = connection.createStatement();
							st1.executeUpdate(sql1);
							}
						PreparedStatement ps1=connection.prepareStatement("insert into retweets(tname,t_user,t_comment,r_user,r_comment,date) values(?,?,?,?,?,?)");
						ps1.setString(1,tname);
						ps1.setString(2,t_user);
							ps1.setString(3,t_cmt);
						ps1.setString(4,user);
						ps1.setString(5,r_comment);
						ps1.setString(6,dt);
						ps1.executeUpdate();
						
			%>
			<p><a href="friendstweets.jsp">Back</a>         <a href="usermain.jsp">Home</a> </p>

			
			<%
					   }
			   }
					catch (Exception e) 
					{
						out.println(e.getMessage());
						e.printStackTrace();
					}
				%>
