<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sixentry.aspx.cs" Inherits="admin_sixentry" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Weengs14::Registration</title>
    <link href="../css/Captcha.css" rel="stylesheet" type="text/css" />
    <link href="../img/weeng logo final.png" rel="icon" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="preload">
		<img class="pr1" src="../img/pr7.png" style="width:50%; float:left; margin-left: -50%;" alt="pre" />
		<img class="pr2" src="../img/pr7.png" style="width:50%; height: 100%; margin-left:-50%;" alt="pre" />
		<center><img class="pr3" src="../img/reg_tran.png" alt="pre"/></center>
    </div>
    <div class="page">
    <div class="header">
    <img alt="banner" src="../events/img/weengs-banner3.jpg" height="150px" width="100%" />
    </div>
    <div class="content">
    <br />
<asp:ImageButton ID="IB1" runat="server" PostBackUrl="./Default.aspx" ImageUrl="../eventimg/back.png" />
    <center>
    <h1>
          Registration Form
    </h1><table style="font-size:large; text-align:Left; color:#dddddd">
    <tbody>
    <tr><td>
    <asp:TextBox ID="bkno" placeholder="Enter the Receipt book no..." runat="server"></asp:TextBox>
    </td></tr>    
    <tr><td>
    <asp:TextBox ID="rno" placeholder="Enter the Receipt No..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="rname1" placeholder="Enter the name of group leader..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="rname2" placeholder="Enter the name of member1..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="rname3" placeholder="Enter the name of member2..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="rname4" placeholder="Enter the name of member3..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="rname5" placeholder="Enter the name of member4..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="rname6" placeholder="Enter the name of member5..." runat="server"></asp:TextBox>
    </td></tr>
    <tr><td>
    <asp:TextBox ID="addr" placeholder="Enter the Address of group leader..." runat="server"></asp:TextBox>
    </td></tr><tr><td>
    <asp:TextBox ID="college" placeholder="Enter the college name with city..." runat="server"></asp:TextBox>
    </td></tr><tr><td>
    <asp:TextBox ID="eid" placeholder="Enter the Email ID of group leader..." runat="server"></asp:TextBox>
    </td></tr><tr><td>
    <asp:TextBox ID="cont" placeholder="Enter the Contact No of group leader..." runat="server"></asp:TextBox>
    </td></tr><tr><td>
						            Gender(group leader's)
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

    </td></tr>
   <tr><td>
						            Gender(member1's)
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

    </td></tr>
   <tr><td>
						            Gender(member2's)
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

    </td></tr>
   <tr><td>
						            Gender(member3's)
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

    </td></tr>
   <tr><td>
						            Gender(member4's)
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

    </td></tr>
   <tr><td>
						            Gender(member5's)
                <asp:RadioButtonList ID="RadioButtonList6" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>

    </td></tr>
  
    <tr><td>Event Participating:
   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br />
        </td></tr>
        <tr><td> Branch:&nbsp&nbsp&nbsp
        <asp:DropDownList ID="branch" runat="server">
            <asp:ListItem>IT/CSE</asp:ListItem>
            <asp:ListItem>MECH</asp:ListItem>
            <asp:ListItem>E&amp;TC</asp:ListItem>
            <asp:ListItem>CIVIL</asp:ListItem>
        </asp:DropDownList>
        </td></tr>
        <tr><td>
      Accomodation(Required)
			    
    <asp:RadioButtonList ID="RadioButtonList7" runat="server" RepeatDirection="Horizontal">
     <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem></asp:RadioButtonList>
            
    </td></tr><tr><td>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Register" />
    <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </td></tr></tbody></table>
    </center>
    
   
	<!--<img src="url.gif" height="600" width="800" align="middle"/>-->
    </div>
    <div class="footer">
    <div id="bottomMenu">
     <ul>
     <li> 
    <a href="../Default.aspx">
      Home
    </a>
       |
    </li><li><a href="../events/Default.aspx">
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
