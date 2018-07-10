<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Server main page</title>
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
                <li><a href="servermain.jsp">Home</a></li>
                <li><a href="#" class="current">Server</a></li>
                <li><a href="serverlogin.jsp">Logout</a></li>
               
            </ul>    	
    	</div><!-- end of templatemo_menu -->
        
        <div id="templatemo_banner">
            
                <div id="one" class="contentslider">
                    <div class="cs_wrapper">
                        <div class="cs_slider">
                        
                            <div class="cs_article">
                            	
                                <div class="left">
                                    <h2>Abstract</h2>
                                    <p align="justify">Abstract—With wide use of cloud computing and storage services, sensitive information is increasingly centralized into the cloud to
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
<%String server=(String)application.getAttribute("server");%>
        <h2>Welcome to <%=server%>        </h2>
             
            
            
            <div class="cleaner_h40">
              <p>&nbsp;</p>
              <p align="center"><img src="images/new/fact.jpg" width="403" height="218" /></p>
              <p align="justify"><strong>Cloud computing, a new technology for a long dreamed vision
of computing as a utility, has been gaining a great deal of
momentum in the IT industry. Many organizations, enterprises and
even individuals outsource their data into the cloud so as to enjoy
the on-demand high quality data storage services and computing
resources. Despite such benefits, data outsourcing deprives the
data owners of direct control over their own outsourced data,
which could reveal some private sensitive information, such as
Personal Health Records (PHRs), facebook photos, financial transactions
or business documents. </strong></p>
              <p>&nbsp;</p>
            </div>
            
            <h2>&nbsp;</h2>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p>&nbsp;</p>
        <div class="col c1">
              <h2>&nbsp;</h2>
          <a href="#"></a> <a href="#"></a> <a href="#"></a><br /> 
          <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
	</div> <!-- end of templatemo_content -->
        
        <div id="templatemo_sidebar">

           <div id="news_section">
                
                <h2>Menu</h2>
   
                <div class="gadget">
                  <p><a href="allusers.jsp"> All End User </a> </p>
                  <!--<p>   <a href="allfriendsreq_res.jsp">All Employee Requests and Responses </a> </p>
                  <p><a href="createtweets.jsp">Create and Publish Projects</a></p>
                  <p><a href="listalltweets.jsp">All Projects </a></p>
                  <p><a href="alltweets.jsp">All Projects with Comments </a></p>
              <!--    <p><a href="viewalltweets+.jsp">View Positive   Tweets and Retweets</a>   </p>  -->
			   <!--<p><a href="viewallpostweets.jsp">View High Performer </a>   </p> 
                  <p><a href="neutraltweets.jsp">View Medium Performer</a></p>
             <p><a href="viewallnegtweets.jsp">View Low Performer</a> </p> 
                  <p><a href="allevents.jsp">All Summary Of Events in Dataset</a> </p>
				  <p><a href="Results.jsp">Results</a> </p>-->
                  <p><a href="index.html">Logout</a></p>
                  <p>&nbsp; </p>
                  <p class="star">&nbsp;</p>
          </div>
		   <h2>&nbsp;</h2>
		   <!--<h2>Retweeters</h2>
		   <div class="gadget">
          <p class="star">The identities of the users who retweeted
              the target users. The insight is similar users get followed
              and retweeted by similar audience due to the homophily
             principle. This is the “network” aspect of the data.</p>
          <div class="clr">
            
            </di-->
          </div>
                
                <div class="cleaner"></div>  
                   
          </div>
            
           
                <div class="margin_bottom_20"></div>
                
               
            
      </div>
        
            <div class="cleaner"></div>
        </div> <!-- end of sidebar -->

	<div class="cleaner"></div>
</div>
</div>
</div>
        
<div id="templatemo_footer_wrapper">
  <div id="templatemo_footer">

        <ul class="footer_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#" class="current">Server</a></li>
            <li><a href="serverlogin.jsp">Logout</a></li>
            <li></li><li class="last_menu"></li>
        </ul>
    
  </div> 
    <!-- end of footer -->

</div> <!-- end of footer_wrapper -->

<div align=center></div>
</body>
</html>