<%@ Page Language="C#" AutoEventWireup="true" CodeFile="civilpaper.aspx.cs" Inherits="events_civilpaper" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weengs14::Civil Paper Presentation</title>
    <link href="../../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../../img/weeng logo final.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="preload">
		<img class="pr1" src="../../img/pr4.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="../../img/pr4.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="../../img/civil_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header">
    <img alt="banner" src="../img/weengs-banner3.jpg" height="150px" width="100%" />
    </div>
    <div class="content">
    <br />
    <div style="text-align:left; padding-left:40px; font-size:30px; font-weight:300; color:Orange;">
       <br /><center>
       <img alt="Civil Paper Presentation" src="../../eventimg/civilp.jpg" width="300" height="150"/>
       </center>
       <br /> Subjects:
        <div style="padding-left:40px; font-style:normal; font-size:20px; font-weight:400; color:Yellow;">
        <ul>
        <li>Disaster Management</li>
        <li>Application of Geographical Information System</li>
        <li>Ground Water Recharging OR Rain Water Harvesting</li>
        <li>Green Building</li>
        <li>Software Applications in civil Engineering</li>
        <li>Environment Enginnering</li>
        <li>Special economic zone(SEZ)</li>
        <li>Water Resourses Engineering</li>
        <li>New techniques of waste water management </li>
        <li>Highway Design and Safety</li>
        </ul>
        </div>
    </div>
     <div style="text-align:center;">
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/eventimg/button-copy.png" PostBackUrl="~/user/Default.aspx?event=papercivil" /></div>
    </div>
    <div class="footer">
       <div id="bottomMenu">
     <ul>
     <li> 
    <a href="../../Default.aspx">
      Home
    </a>
       &nbsp&nbsp
    </li><li><a href="../../events/Default.aspx">
      Events
    </a>
       &nbsp&nbsp
    </li><li><a href="../../login.aspx">
      Login
    </a>
       &nbsp&nbsp
    </li><li><a href="../../inspiration.aspx">
      Our Inspiration
    </a>
       &nbsp&nbsp
    </li><li><a href="../../motivation.aspx">
      Our Motivation
    </a>
          &nbsp&nbsp
    </li><li><a href="../../oursponcers.aspx">
      Our Sponsores
    </a>
       &nbsp&nbsp
    </li><li><a href="../../contactus.aspx">
      Contact Us
    </a>
       &nbsp&nbsp
    </li><li><a href="../../aboutus.aspx">
      About Us
    </a>
             &nbsp&nbsp
    </li><li><a href="../../photogalary.aspx">
      Photo Galary
    </a>
       &nbsp&nbsp
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
