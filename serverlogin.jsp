<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Server login page</title>
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
                <li><a href="index.html">Home</a></li>
                <li><a href="userlogin.jsp">End User</a></li>
                <li><a href="serverlogin.jsp"  class="current">Server</a></li>
               
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
of private matching over outsourced encrypted datasets in identity-based cryptosystem that can simplify the certificate management. </p>
                                    
                                   
                               	</div>
                                <div class="right">
                               <a href="http://www.templatemo.com/page/1" target="_parent"><img src="images/slider/templatemo_slide02.jpg" alt="Template 1" /></a>
								</div>
                                                                
                            </div><!-- End cs_article -->
                            
                            <div class="cs_article">
                                <div class="left">
                                    <p align="justify"> In this, we study the problem of quantifying and inferring the political leaning of Twitter users. We formulate political leaning inference as a convex optimization problem that incorporates two ideas: (a) users are consistent in their actions of tweeting and retweeting about political issues, and (b) similar users tend to be retweeted by similar audience.. </p>
                                    
                                   
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

        <h2>Welcome to Server Login        </h2>
             
            
            <form id="form1" name="form1" method="post" action="authentication.jsp?type=<%="server"%>">
              <table width="660" align="left">
                  <tr>
                    <td width="162" height="35">User Name (required)</td>
                    <td width="486"><input id="name" name="userid" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38">Password (required)</td>
                    <td><input type="password" id="password" name="pass" class="text" /></td>
                  </tr>
				 
          <tr><td></td>
          <td>
                 <input name="imageField" type="submit"  class="style3" id="imageField" value="Login" />
               <input name="Reset" type="reset" class="style3" value="Reset" /></td>
			   </tr>
             
              </p>
                <p>&nbsp;</p>
				 </table>
        </form>
            <div class="cleaner_h40"></div>
            
            <h2>&nbsp;</h2>
            <div class="col c1">
              <!--<h2><span>Image</span> Gallery</h2>
              <a href="#"><img src="images/new/2.png" width="100" height="100" alt="1" class="gal" /></a> <a href="#"><img src="images/new/4.png" width="100" height="100" alt="2" class="gal" /></a> <a href="#"><img src="images/new/5.jpg" width="100" height="100" alt="3" class="gal" /></a><br /> <a href="#"><img src="images/new/6.jpg" width="100" height="100" alt="4" class="gal" /></a> <a href="#"><img src="images/new/7.jpg" width="100" height="100" alt="5" class="gal" /></a> <a href="#"><img src="images/new/1.jpg" width="100" height="100" alt="6" class="gal" /></a>  </div>-->
	</div> <!-- end of templatemo_content -->
        
        <div id="templatemo_sidebar">

           <div id="news_section">
                
             <!--<h2>Introduction</h2>
   
                <div class="gadget">
          <p class="star"><em>Cloud computing, a new technology for a long dreamed vision
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
before outsourcing is a promising solution. In our previous work,
we adopted different encryption skills to solve some data privacy
problems in PHRs systems and mobile social networks (e.g., [7],
[10]) as well as much other work (e.g., [6], [11]). However, data
encryption may severely hinder several functionalities of data, for
instance, private matching over outsourced encrypted datasets. In
this paper, we focus on the problem of how the cloud carries out
private matching over outsourced encrypted datasets if and only if
the cloud server is authorized to do so..</em></p>
          <div class="clr">-->
            
            </div>
          </div>
		   <!--<h2>&nbsp;</h2>
		   <h2>&nbsp;</h2>
		   <h2>Retweeters</h2>
		   <div class="gadget">
          <p class="star">The identities of the users who retweeted
              the target users. The insight is similar users get followed
              and retweeted by similar audience due to the homophily
             principle. This is the “network” aspect of the data.</p>
          <div class="clr">
            
            </div>
          </div>-->
                
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
            <li><a href="index.html">Home</a></li>
            <li><a href="userlogin.jsp" class="current">End user</a></li>
            <li><a href="serverlogin.jsp">Server</a></li>
            <li></li><li class="last_menu"></li>
        </ul>
    
  </div> 
    <!-- end of footer -->

</div> <!-- end of footer_wrapper -->

<div align=center></div>
</body>
</html>