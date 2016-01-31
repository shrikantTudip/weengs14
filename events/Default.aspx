<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="events_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weengs14::Event Home</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
         <link href="../img/weeng logo final.jpg" rel="icon" />
         <script type="text/javascript">
function showmenu(elmnt)
{
document.getElementById("eveemain").style.visibility="hidden";
document.getElementById(elmnt).style.visibility="visible";
}
function hidemenu(elmnt)
{
document.getElementById(elmnt).style.visibility="hidden";
document.getElementById("eveemain").style.visibility="visible";
}
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="preload">
		<img class="pr1" src="../img/pr3.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="../img/pr3.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="../img/events_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header" style="height:200px;">
    <img alt="banner" src="../img/weengs-banner.gif" height="200px" width="100%" />
    </div>    
    <div class="content">
   <center> <div id="headerstrip" >
				<nav id="navigation">
				<table>
						<tr>
							<td ><a href="../Default.aspx" title="Home" style="margin-right:30px;">Home</a></td>
                  			<td onmouseover="showmenu('events')" onmouseout="hidemenu('events')"><a href="Default.aspx" title="Events" style="margin-right:30px; padding-bottom:6px;color:#f20a13;text-shadow: 0px 0px 1px #f20a13;">Events</a>
                  				<table class="menu" id="events" style="margin-left: -5px;">
                  					<tr><td class="menu" style="text-align:left;"><a href="./paper/Default.aspx" style="text-shadow:none">Paper Presentation</a></td></tr>
                  					<tr><td class="menu" style="text-align:left;"><a href="poster.aspx"style="text-shadow:none">Poster Presentation</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="projectexhibition.aspx"style="text-shadow:none">Project Exhibition</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="./programming/Default.aspx"style="text-shadow:none">Programming Contest</a></td></tr>
                  				    <tr><td class="menu" style="text-align:left;"><a href="./designing/Default.aspx"style="text-shadow:none">Designing Contest</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="./robo/Default.aspx"style="text-shadow:none">Robo Contest</a></td></tr>						
                                    <tr><td class="menu" style="text-align:left;"><a href="questofex.aspx"style="text-shadow:none">Quest of Excellence</a></td></tr>				
                                    <tr><td class="menu" style="text-align:left;"><a href="techquiz.aspx"style="text-shadow:none">Techno Quiz</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="addzap.aspx"style="text-shadow:none">Addzap</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./game/Default.aspx"style="text-shadow:none">Gaming Contest</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./funAndArt/Default.aspx"style="text-shadow:none">Fun And Art</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="coadies.aspx"style="text-shadow:none">Coadies</a></td></tr>
                                </table>
                  			</td>
                       		<td><a href="../login.aspx" title="login" style="margin-right:30px; padding-bottom:6px;">Login</a></td>
                       		<td><a href="../inspiration.aspx" title="Inspiration" style="margin-right:30px; padding-bottom:6px;">Our Inspiration</a></td>
                       		<td><a href="../motivation.aspx" title="motivation" style="margin-right:30px; padding-bottom:6px;">Our Motivation</a></td>
                       		<td><a href="../oursponcers.aspx" title="oursponcers" style="margin-right:30px;padding-bottom:6px;">Our Sponcers</a></td>
                       		<td><a href="../contactus.aspx" title="Contactus" style="margin-right:30px;padding-bottom:6px;">Contact Us</a></td>
                       		<td><a href="../aboutus.aspx" title="Aboutus" style="margin-right:30px;padding-bottom:6px;">About Us</a></td>
                       		<td><a href="../photogalary.aspx" title="Photogallary" style="margin-right:30px;padding-bottom:6px;">Photo Gallary</a></td>
                       	</tr>
                    </table>	
                </nav>
            </div></center>
    <div class="pad">
    <div id="eveemain">
            
                <table width="90%" align="left" >
                    <tr>
                        <td valign="top">
                            <a target="_self" href="./paper/Default.aspx">
                                <div class="eve_boxes">
                                     <img alt="Paper Presentation" src="../eventimg/ppt.jpg" height="120px" width="201px" />
                                </div>
                             </a>
                             <a target="_self" href="./designing/Default.aspx">
                                 <div class="eve_boxes">
                                       <img alt=" Designing Contest" src="../eventimg/design.jpg" height="120px" width="201px" />
                                 </div>
                             </a>
                             <a target="_self" href="./addzap.aspx">
                                 <div class="eve_boxes">
                                        <img alt=" Addzap" src="../eventimg/add.jpg" height="120px" width="201px" />
                                 </div>
                              </a>
                           </td>
                           <td valign="top" height="300px">
                              <a target="_self" href="poster.aspx">
                                  <div class="eve_boxes">   
                                        <img alt="Poster Presentation" src="../eventimg/poster.jpg" height="120px" width="201px" />
                                  </div>
                               </a>
                               <a target="_self" href="./robo/Default.aspx">
                                   <div class="eve_boxes">
                                         <img alt="  Robo Contest" src="../eventimg/robo.jpg" height="120px" width="201px" />
                                   </div>
                                </a>
                                <a target="_self" href="./game/Default.aspx">
                                    <div class="eve_boxes">
                                           <img alt="  Games" src="../eventimg/gaming.jpg" height="120px" width="201px" />
                                    </div>
                                 </a>
                            </td>
                            <td valign="top" height="300px">
                                <a target="_self" href="./projectexhibition.aspx">
                                    <div class="eve_boxes">
                                          <img alt="Project Exhibition" src="../eventimg/project.jpg" height="120px" width="201px" />
                                    </div>
                                 </a>
                                 <a target="_self" href="./questofex.aspx">
                                    <div class="eve_boxes">
                                           <img alt="Quest Of Excellance" src="../eventimg/quet.jpg" height="120px" width="201px" />
                                    </div>
                                 </a>
                                 <a target="_self" href="./funAndArt/Default.aspx">
                                    <div class="eve_boxes">
                                            <img alt="Fun And Art" src="../eventimg/fuart.jpg" height="120px" width="201px" />
                                    </div>
                                  </a>
                               </td>
                               <td  valign="top" height="300px">
                                  <a target="_self" href="./programming/Default.aspx">
                                    <div class="eve_boxes">
                                            <img alt="Programming Contest" src="../eventimg/progcont1.jpg" height="120px" width="201px" />
                                    </div>
                                  </a>
                                  <a target="_self" href="./techquiz.aspx">
                                    <div class="eve_boxes">
                                            <img alt="Techno Quiz" src="../eventimg/tech.jpg" height="120px" width="201px" />
                                    </div>
                                  </a>
                                  
                                    <div class="eve_boxes">
                                    <a target="_self" href="./coadies.aspx">
                                             <img alt="codies" src="../eventimg/codies.jpg" height="120px" width="201px" /></a>
                                    </div>
                                  
                                </td>
                            </tr>
                        </table>
                       </div>         
    </div>
    </div> <div class="footer">
    <div id="bottomMenu">
     <ul>
     <li> 
    <a href="../Default.aspx">
      Home
    </a>
       |
    </li><li><a href="./Default.aspx">
      Events
    </a>
       |
    </li><li><a href="../login.aspx">
      Login
    </a>
       |
    </li><li><a href="../inspiration.aspx">
      Our Inspiration
    </a>
       |
    </li><li><a href="../motivation.aspx">
      Our Motivation
    </a>
       |   
    </li><li><a href="../oursponcers.aspx">
      Our Sponsores
    </a>
       |
    </li><li><a href="../contactus.aspx">
      Contact Us
    </a>
       |
    </li><li><a href="../aboutus.aspx">
      About Us
    </a>
       |      
    </li><li><a href="../photogalary.aspx">
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
