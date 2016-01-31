<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weengs 14::Contact us</title>
    <link href="css/default.css" rel="stylesheet" type="text/css" />
    <style>
      #map_canvas 
      {
        width: 400px;
       height:100px;
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script>
      function initialize() {
        var map_canvas = document.getElementById('map_canvas');
        var map_options = {
          center: new google.maps.LatLng(44.5403, -78.5463),
          zoom: 8,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        }
        var map = new google.maps.Map(map_canvas, map_options)
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div id="preload">
		<img class="pr1" src="./img/pr1.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="./img/pr1.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="./img/cont_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header">
    <img alt="banner" src="./events/img/weengs-banner3.jpg" height="150px" width="100%" />
    </div>
    <div class="content">
    
   <center> <div id="headerstrip" >
				<nav id="navigation">
				<table>
						<tr>
							<td ><a href="./Default.aspx" title="Home" style="margin-right:30px;">Home</a></td>
                  			<td onmouseover="showmenu('events')" onmouseout="hidemenu('events')"><a href="./events/Default.aspx" title="Events" style="margin-right:30px; padding-bottom:6px;color:#f20a13;text-shadow: 0px 0px 1px #f20a13;">Events</a>
                  				<table class="menu" id="events" style="margin-left: -5px;">
                  					<tr><td class="menu" style="text-align:left;"><a href="./events/paper/Default.aspx" style="text-shadow:none">Paper Presentation</a></td></tr>
                  					<tr><td class="menu" style="text-align:left;"><a href="/events/poster.aspx"style="text-shadow:none">Poster Presentation</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="/events/projectexhibition.aspx"style="text-shadow:none">Project Exhibition</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="/events/programming/Default.aspx"style="text-shadow:none">Programming Contest</a></td></tr>
                  				    <tr><td class="menu" style="text-align:left;"><a href="./events/designing/Default.aspx"style="text-shadow:none">Designing Contest</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="./events/robo/Default.aspx"style="text-shadow:none">Robo Contest</a></td></tr>						
                                    <tr><td class="menu" style="text-align:left;"><a href="/events/questofex.aspx"style="text-shadow:none">Quest of Excellence</a></td></tr>				
                                    <tr><td class="menu" style="text-align:left;"><a href="/events/techquiz.aspx"style="text-shadow:none">Techno Quiz</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="/events/addzap.aspx"style="text-shadow:none">Addzap</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/game/Default.aspx"style="text-shadow:none">Gaming Contest</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/funAndArt/Default.aspx"style="text-shadow:none">Fun And Art</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="/events/coadies.aspx"style="text-shadow:none">Coadies</a></td></tr>
                                </table>
                  			</td>
                       		<td><a href="./login.aspx" title="login" style="margin-right:30px; padding-bottom:6px;">Login</a></td>
                       		<td><a href="./inspiration.aspx" title="Inspiration" style="margin-right:30px; padding-bottom:6px;">Our Inspiration</a></td>
                       		<td><a href="./motivation.aspx" title="motivation" style="margin-right:30px; padding-bottom:6px;">Our Motivation</a></td>
                       		<td><a href="./oursponcers.aspx" title="oursponcers" style="margin-right:30px;padding-bottom:6px;">Our Sponcers</a></td>
                       		<td><a href="./contactus.aspx" title="Contactus" style="margin-right:30px;padding-bottom:6px;">Contact Us</a></td>
                       		<td><a href="./aboutus.aspx" title="Aboutus" style="margin-right:30px;padding-bottom:6px;">About Us</a></td>
                       		<td><a href="./photogalary.aspx" title="Photogallary" style="margin-right:30px;padding-bottom:6px;">Photo Gallary</a></td>
                       	</tr>
                    </table>	
                </nav>
            </div></center><br />
    <center><img src="img/contact1.jpg" height="120" width="898" alt="Contact Us" />
   <span style="text-align:left; font-family:Times New Roman; font-weight:bolder;"><br />

T.P.C.T.'s College of Engineering,<br />
Solapur Road,<br />
Osmanabad - 413501<br />
Telephone : 02472-251712&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                       02472-251011<br />
E-mail: principal.coeo@yahoo.com
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp weengs14@gmail.com</span></center><br />
<table width="100%">
<tr>
<td width="50%" style="padding-left:20px"><iframe width="425" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?q=college+of+engineering+osmanabad&hl=en&ll=18.145689,76.061611&spn=0.105378,0.154324&geocode=+&t=m&z=13"></iframe><br /><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=+&amp;q=college+of+engineering+osmanabad&amp;ie=UTF8&amp;hq=&amp;hnear=&amp;ll=18.145362,76.061438&amp;spn=0.006295,0.006295&amp;t=m&amp;iwloc=A" style="color:#0000FF;text-align:left">View Larger Map</a></small></td>
<td width="50%">
7 Km from Bus Stand.
<br />
About 15 Km from Railway station.
<br />
There are buses from solapur to osmanabad per hour.
<br />
Trains from pune,mumbai,hydrabad,parli,pandhurpur are also available daily or tri weekly. 
</td></tr></table>


    <table width="100%">
     <tr><td colspan="8" align="center"><b>Shrikant Patwari<br />8956701596</b></td></tr>
    
    <tr><td align="center"><b>Mayur Kanwale<br />8805508935<br />CSE</b></td><td align="center"><b>Akshay Kulkarni<br />8390570708<br />MECH</b></td><td align="center"><b>Nilesh Pawar<br />9421977512<br />Civil</b></td><td align="center"><b>Ganesh Pandhawale<br />8793105555<br />IT</b></td><td align="center"><b>Shyam Magar<br />9763102965<br />ETC</b></td><td align="center"><b>Shahrukh Junedi<br />9028188526<br />Games<b></td></tr>
    </table>
    <p></p>
    </div>
   <div class="footer" style="height:80px">
       <div id="bottomMenu">
     <ul>
     <li> 
    <a href="Default.aspx">
      Home
    </a>
       |
    </li><li><a href="./events/Default.aspx">
      Events
    </a>
       |
    </li><li><a href="./login.aspx">
      Login
    </a>
       |
    </li><li><a href="./inspiration.aspx">
      Our Inspiration
    </a>
       |
    </li><li><a href="./motivation.aspx">
      Our Motivation
    </a>
       |   
    </li><li><a href="./oursponcers.aspx">
      Our Sponsores
    </a>
       |
    </li><li><a href="./contactus.aspx">
      Contact Us
    </a>
       |
    </li><li><a href="./aboutus.aspx">
      About Us
    </a>
       |      
    </li><li><a href="./photogalary.aspx">
      Photo Galary
    </a>
       |
    </li>
    </ul>
    <p id="copyright">
    CopyRight @Weengs14 Web Devloper team 
    </p>
    </div>
    </div>
    </div>

    </form>
</body>
</html>
