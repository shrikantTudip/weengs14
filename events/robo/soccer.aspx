<%@ Page Language="C#" AutoEventWireup="true" CodeFile="soccer.aspx.cs" Inherits="events_robo_soccer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weengs14::Robo Soccer</title>
    <link href="../../css/default.css" rel="stylesheet" type="text/css" />
     <link href="../../img/weeng logo final.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="preload">
		<img class="pr1" src="../../img/pr5.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="../../img/pr5.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="../../img/soccer_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header">
    <img alt="banner" src="../img/weengs-banner3.jpg" height="150px" width="100%" />
    </div>
    <div class="content">
    <div style="text-align:center; font-weight:bolder; color:Red; font-size:30px;">
    Robo Soccer
    </div>
    <div style="text-align:center; font-weight:bolder; color:orange; font-size:15px;">
    
    </div>
    <br />
     <div style="text-align:left; padding-left:40px; font-size:30px; font-weight:300; color:Orange;">
    <center>
       <img alt="Robo Soccer" src="../../eventimg/robot_soccer.jpg" width="300" height="150"/>
       </center>
       <br /> Rules:
        <div style="padding-left:40px; font-style:normal; font-size:20px; font-weight:400; color:Yellow;">
        <ul>
        <li>Maximum Three Candidate per team.</li>
        <li>Each match will be of 10 min.</li>
    </ul>
    </div>
     <div style="text-align:left; padding-left:40px; font-size:30px; font-weight:300; color:Orange;">
       <br /> Entry Fees:&nbsp&nbsp <font color="yellow" size="10px">INR 250</font>
    </div>
     <div style="text-align:center;">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="../../eventimg/button-copy.png" PostBackUrl="../../user/Default.aspx?event=soccer" /></div>
    </div>
    </div>
    <div class="footer">
       <div id="bottomMenu">
     <ul>
     <li> 
    <a href="../../Default.aspx">
      Home
    </a>
       |
    </li><li><a href="../../events/Default.aspx">
      Events
    </a>
       |
    </li><li><a href="../../login.aspx">
      Login
    </a>
       |
    </li><li><a href="../../inspiration.aspx">
      Our Inspiration
    </a>
       |
    </li><li><a href="../../motivation.aspx">
      Our Motivation
    </a>
       |   
    </li><li><a href="../../oursponcers.aspx">
      Our Sponsores
    </a>
       |
    </li><li><a href="../../contactus.aspx">
      Contact Us
    </a>
       |
    </li><li><a href="../../aboutus.aspx">
      About Us
    </a>
       |      
    </li><li><a href="../../photogalary.aspx">
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
