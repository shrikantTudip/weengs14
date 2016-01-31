<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Weengs14::Login</title>
    <link href="./css/Captcha.css" rel="stylesheet" type="text/css" />
    <link href="./img/weeng logo final.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="preload">
		<img class="pr1" src="./img/pr7.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="./img/pr7.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="./img/login_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header">
    <img alt="banner" src="./events/img/weengs-banner3.jpg" height="150px" width="100%" />
    </div>
    <div class="content"  style="height:500px">
    
    
   <center> <div id="headerstrip" >
				<nav id="navigation">
				<table>
						<tr>
							<td ><a href="./Default.aspx" title="Home" style="margin-right:30px;">Home</a></td>
                  			<td onmouseover="showmenu('events')" onmouseout="hidemenu('events')"><a href="./events/Default.aspx" title="Events" style="margin-right:30px; padding-bottom:6px;color:#f20a13;text-shadow: 0px 0px 1px #f20a13;">Events</a>
                  				<table class="menu" id="events" style="margin-left: -5px;">
                  					<tr><td class="menu" style="text-align:left;"><a href="./events/paper/Default.aspx" style="text-shadow:none">Paper Presentation</a></td></tr>
                  					<tr><td class="menu" style="text-align:left;"><a href="./events/poster.aspx"style="text-shadow:none">Poster Presentation</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="./events/projectexhibition.aspx"style="text-shadow:none">Project Exhibition</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="./events/programming/Default.aspx"style="text-shadow:none">Programming Contest</a></td></tr>
                  				    <tr><td class="menu" style="text-align:left;"><a href="./events/designing/Default.aspx"style="text-shadow:none">Designing Contest</a></td></tr>
							        <tr><td class="menu" style="text-align:left;"><a href="./events/robo/Default.aspx"style="text-shadow:none">Robo Contest</a></td></tr>						
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/questofex.aspx"style="text-shadow:none">Quest of Excellence</a></td></tr>				
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/techquiz.aspx"style="text-shadow:none">Techno Quiz</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/addzap.aspx"style="text-shadow:none">Addzap</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/game/Default.aspx"style="text-shadow:none">Gaming Contest</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/funAndArt/Default.aspx"style="text-shadow:none">Fun And Art</a></td></tr>
                                    <tr><td class="menu" style="text-align:left;"><a href="./events/coadies.aspx"style="text-shadow:none">Coadies</a></td></tr>
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
    <br />
    <p class="style6">
        Please Login On System To Start Registration</p>
    <asp:Panel ID="Panel1" runat="server" style="text-align: center" Width="100%">
        <table align="center" cellpadding="4" cellspacing="5" 
    class="style7">
            <tr>
                <td class="style11">&nbsp;
                    </td>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="#FFCCFF" 
                        Text="Login" style="color: #3333CC"></asp:Label>
                </td>
                <td class="style13">&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style11">
                   &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter the UserId..." TextMode="SingleLine"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Please Enter Username">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter the Password..." TextMode="Password"></asp:TextBox>
                </td>
                <td class="style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Please enter password">**</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">&nbsp;
                    </td>
                <td>
                    &nbsp; &nbsp;
                    <asp:Button ID="Button1" runat="server" Font-Underline="True" 
                        ForeColor="#3399FF" Text="Login" onclick="Button1_Click" 
                        style="font-weight: 700; background-color: #CCCCCC" />
                </td>
                <td class="style13">&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style11">&nbsp;
                    </td>
                <td class="style12">
                    <asp:Label ID="lblerror" runat="server"></asp:Label>
                </td>
                <td class="style13">&nbsp;
                    </td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    <div class="footer">
    <div id="bottomMenu">
     <ul>
     <li> 
    <a href="./Default.aspx">
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
