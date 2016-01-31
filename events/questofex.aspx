<%@ Page Language="C#" AutoEventWireup="true" CodeFile="questofex.aspx.cs" Inherits="events_questofex" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weengs14::Quest Of Excellance</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../img/weeng logo final.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
<div id="preload">
		<img class="pr1" src="../img/pr3.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="../img/pr3.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="../img/quest_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header">
    <img alt="banner" src="./img/weengs-banner3.jpg" height="150px" width="100%" />
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
    <div style="text-align:center; font-weight:bolder; color:Red; font-size:30px;">
    Quest Of Excellance
    </div>
    <div style="text-align:center; font-weight:bolder; color:orange; font-size:15px;">
    
    </div>
    <br />
     <div style="text-align:left; padding-left:40px; font-size:30px; font-weight:300; color:Orange;">
    <center>
       <img alt="Quest Of Excellance" src="../eventimg/quest.jpg" width="300" height="150"/>
       </center>
       <br /> Rules:
        <div style="padding-left:40px; font-style:normal; font-size:20px; font-weight:400; color:Yellow;">
        <ul>
        <li>One Candidate per team.</li>
        <li>Event is for exploring the internal talent of candidate</li>
        <li>there are various rounds like singing, dancing etc</li>
        <li>The best performer will be winner</li>
        <li>Judges decision is final</li>
    </ul>
    </div>
     <div style="text-align:left; padding-left:40px; font-size:30px; font-weight:300; color:Orange;">
       <br /> Entry Fees:&nbsp&nbsp <font color="yellow" size="10px">INR 200</font>
    </div>
     <div style="text-align:center;">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/eventimg/button-copy.png" PostBackUrl="~/user/Default.aspx?event=quest" /></div>
    </div>
    </div>
    <div class="footer">
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
