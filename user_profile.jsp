<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>user profile page</title>
<meta name="keywords" content="multi layer, free website templates, XHTML CSS" />
<meta name="description" content="Multi Layer - free website template provided by templatemo.com" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />
<link href="css/jquery.ennui.contentslider.css" rel="stylesheet" type="text/css" media="screen,projection" />
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #CCFF33;
	font-family: Georgia, "Times New Roman", Times, serif;
	font-weight: bold;
	font-style: italic;
}
.style2 {font-size: 18px}
.style3 {font-weight: bold}
-->
</style>
</head>
<body>
<div id="templatemo_header_wrapper">

	<div id="templatemo_header">
    
   	  <div class="style1" id="site_title">Identity-Based Private Matching over Outsourced Encrypted Datasets</div>
        
        <div id="search_box">
            <form action="#" method="get">
              <input type="text" name="q" size="10" id="searchfield" title="searchfield" value="Search Here" onblur="if(this.value=='') this.value='Search Here'" onfocus="if(this.value =='Search Here' ) this.value=''" />
              <input type="submit" name="Search" value="Search" alt="Search" id="searchbutton" title="Search" />
            </form>
        </div>
        
        <div class="cleaner"></div>
	</div><!-- end of header -->

    	<div id="templatemo_menu">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#" class="current">End User</a></li>
                <li><a href="#">Server</a></li>
               
            </ul>    	
    	</div><!-- end of templatemo_menu -->
        
        <div id="templatemo_banner">
            
                <div id="one" class="contentslider">
                    <div class="cs_wrapper">
                        <div class="cs_slider">
                        
                            <div class="cs_article">
                            	
                                <div class="left">
                                    <h2>Abstract</h2>
                                    <p align="justify">With wide use of cloud computing and storage services, sensitive information is increasingly centralized into the cloud to
reduce the management costs, which raises concerns about data privacy. Encryption is a promising way to maintain the confidentiality
of outsourced sensitive data, but it makes effective data utilization to be a very challenging task. In this paper, we focus on the problem
of private matching over outsourced encrypted datasets in identity-based cryptosystem that can simplify the certificate management.</p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                               <a href="http://www.templatemo.com/page/1" target="_parent"><img src="images/slider/templatemo_slide02.jpg" alt="Template 1" /></a>
								</div>
                                                                
                            </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                                <div class="left">
                                    <p align="justify"> In this, we study the problem of quantifying and inferring the political leaning of Twitter users. We formulate political leaning inference as a convex optimization problem that incorporates two ideas: (a) users are consistent in their actions of tweeting and retweeting about political issues, and (b) similar users tend to be retweeted by similar audience.. </p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                                <a href="http://www.templatemo.com/page/2" target="_parent"><img src="images/slider/templatemo_slide01.jpg" alt="Template 2" /></a>
                                </div>
                            </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                                <div class="left">
                                    <h2>Introduction</h2>
                                    <p align="justify">In recent years, big online social media data have found
many applications in the intersection of political and computer science. Examples include answering questions
in political and social science using online social media to predict election outcomes, and personalizing social media feeds so as to provide a fair and balanced view of people’s opinions
on controversial issues.  </p>
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                                <a href="http://www.templatemo.com/page/3" target="_parent"><img src="images/slider/templatemo_slide03.jpg" alt="Template 3" /></a>
                                </div>
                            </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                                <div class="left">
                                   
                                    <p align="justify">A prerequisite for answering the
above research questions is the ability to accurately estimate
the political leaning of the population involved. If it is not
met, either the conclusion will be invalid, the prediction will
perform poorly due to a skew towards highly vocal
individuals, or user experience will suffer. </p>
                                    
                                    <div class="button"><a href="#">Read more</a></div>
                               	</div>
                                <div class="right">
                                <a href="http://www.templatemo.com/page/4" target="_parent"><img src="images/slider/templatemo_slide04.jpg" alt="Template 4" /></a>
                                </div>
                            </div><!-- End cs_article -->
                      
                        </div><!-- End cs_slider -->
                    </div><!-- End cs_wrapper -->
                </div><!-- End contentslider -->
                
                <!-- Site JavaScript -->
                <script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
                <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
                <script type="text/javascript" src="js/jquery.ennui.contentslider.js"></script>
                <script type="text/javascript">
                    $(function() {
                    $('#one').ContentSlider({
                    width : '920px',
                    height : '200px',
                    speed : 800,
                    easing : 'easeInOutBack'
                    });
                    });
                </script>
                <script src="js/jquery.chili-2.2.js" type="text/javascript"></script>
                <script src="js/chili/recipes.js" type="text/javascript"></script>
                <div class="cleaner"></div>
   
        </div>

</div> <!-- end of header_wrapper -->

<div id="templatemo_content_wrapper_outer">
<div id="templatemo_content_wrapper_inner">
<div id="templatemo_content_wrapper">

	<div id="templatemo_content">
<%String user=(String)application.getAttribute("user");
String uname=(String)application.getAttribute("uname");%>
        <h2>Hi <%=user%> ,Your Profile detalis:        </h2>
             
            
            
<div class="cleaner_h40">
			<p><table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
			
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>

					<%
						
					//	String user=(String )application.getAttribute("user");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next())
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(6);
								s5=rs.getString(8);
								
								
								//String sql="select * from req_res where requestfrom!='"+user+"'";
								//Statement st1=connection.createStatement();
						  // 	ResultSet rs1=st1.executeQuery(sql);
					   		//if( rs1.next() )
							//{
							//int j=rs1.getInt(1);
							//String status=rs1.getString(4);
							//String dt=rs1.getString(5);
							
					%>
					<tr>
					<td width="230" rowspan="9" >
						<div class="style7" style="margin:10px 13px 10px 13px;" ><a class="#" id="img1" href="#" >
						 <input  name="image" type="image" src="profile_pic.jsp?id=<%=i%>&type=<%="user"%>" style="width:200px; height:200px;"  />
						 </a></div>					</td>
					</tr>
					
					
					<tr>
					  <td  width="127" valign="middle" height="48" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Name</strong></div></td>
					  <td  width="182" valign="middle" height="48" style="color:#000000;"><div align="left" class="style6 style10" style="margin-left:20px;"><%out.println(s1);%></div></td>
					</tr>
					<tr>
					  <td  width="127" valign="middle" height="45" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
					  <td  width="182" valign="middle" height="45" style="color:#000000;"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s2);%></div></td>
					</tr>
					
					<tr>
					  <td  width="127" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Mobile</strong></div></td>
					  <td  width="182" valign="middle" height="40"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s3);%></div></td>
					</tr>
					
					<tr>
<td  width="127" align="left" valign="middle" height="38" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7" style="margin-left:20px;"><strong>Date Of Birth</strong></div> </td>                    	
<td  width="182" align="left" valign="middle" height="38"><div align="left" class="style11" style="margin-left:20px;"><%out.println(s4);%></div></td>
					</tr>
					
					<tr>
					  <td align="left" valign="middle" height="38" style="color: #2c83b0;"><div align="left " class="style3 style4 style14 style7" style="margin-left:20px;">Address</div></td>
					  <td align="left" valign="middle" height="38"><div align="left" class="style11" style="margin-left:20px;">
                        <%out.println(s5);%>
                      </div></td>
			  </tr>
			  
		
					 
				<%}
				
					
						
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>

					
				</table>
				</p>
            
            <p align="right">&nbsp;</p>
			<form action="SearchFriend.jsp" method="post">
            <table width="470">
              <tr>
                <td width="106" height="46"><strong>Search Friend</strong> </td>
                <td width="140"><input type="text" name="keyword" /></td>
                <td width="95"><label>
                <input type="submit" name="Submit" value="Search" />
                </label></td>
              </tr>
            </table></form>
            <p align="right"><a href="usermain.jsp" class="style2">Back</a></p>
			
        </div>
	</div> <!-- end of templatemo_content -->
        
        <div id="templatemo_sidebar">

           <div id="news_section">
                
                <h2>Menu</h2>
   
                <div class="gadget">
                  <p><a href="user_profile.jsp">View  Profile </a></p>
                  <p><a href="userlogin.jsp">Logout</a> </p>
                  <p></p>
                  <p>&nbsp; </p>
                  <p class="star">&nbsp;</p>
          </div>
		  
		   <h2>&nbsp;</h2>
		   <h2>Introduction</h2>
		   <div class="gadget">
          <p class="star">Cloud computing, a new technology for a long dreamed vision
of computing as a utility, has been gaining a great deal of
momentum in the IT industry. Many organizations, enterprises and
even individuals outsource their data into the cloud so as to enjoy
the on-demand high quality data storage services and computing
resources. Despite such benefits, data outsourcing deprives the
data owners of direct control over their own outsourced data,
which could reveal some private sensitive information, such as
Personal Health Records (PHRs), facebook photos, financial transactions
or business documents. To maintain the privacy of owners’
sensitive data against untrusted cloud servers, data encryption
before outsourcing is a promising solution.</p>
          <div class="clr">
            
            </div>
          </div>
                
                <div class="cleaner"></div>  
                   
          </div>
            
           
                <div class="margin_bottom_20"></div>
                
               
            
      </div>
        
            <div class="cleaner">
</div>
</div> <!-- end of sidebar -->

	<div class="cleaner"></div>
</div>
</div>
<div id="templatemo_footer_wrapper">
  <div id="templatemo_footer">

        <ul class="footer_menu">
            <li></li>
        </ul>
    
  </div> 
    <!-- end of footer -->

</div> <!-- end of footer_wrapper -->

<div align=center></div>
</body>
</html>