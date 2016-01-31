<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="user_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <center>
    <h1>
          Registration Form
    </h1><table style="font-size:large; text-align:Left; color:#dddddd">
    <tbody>   <tr><td>
    <asp:TextBox ID="rname" placeholder="Enter the name of participant..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFV1" runat="server" ErrorMessage="Please Enter the name" ControlToValidate="rname">*</asp:RequiredFieldValidator>
    </td></tr><tr><td>
    <asp:TextBox ID="addr" placeholder="Enter the Address of paticipant..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFV2" runat="server" ErrorMessage="Please Enter the Address" ControlToValidate="addr">**</asp:RequiredFieldValidator>
    </td></tr><tr><td>
    <asp:TextBox ID="college" placeholder="Enter the college name with city..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFV3" runat="server" ErrorMessage="Please Enter the college name with city" ControlToValidate="college">#</asp:RequiredFieldValidator>
    </td></tr><tr><td>
    <asp:TextBox ID="eid" placeholder="Enter the Email ID of participant..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFV4" runat="server" ErrorMessage="Please Enter the Email ID" ControlToValidate="eid">@</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Please Enter correct email id" ControlToValidate="eid" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">@@</asp:RegularExpressionValidator>
    </td></tr><tr><td>
    <asp:TextBox ID="cont" placeholder="Enter the Contact No of participant..." runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RFV5" runat="server" ErrorMessage="Please Enter the Contact No" ControlToValidate="cont">$</asp:RequiredFieldValidator>
    </td></tr><tr><td>
						            
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                                        runat="server" ErrorMessage="Please select Gender" 
                                        ControlToValidate="RadioButtonList1">!</asp:RequiredFieldValidator>

    </td></tr>
   
    <tr><td>Event Participating:
   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br /><br />
        </td></tr>
        <tr><td>
      Accomodation(Required)
			    
    <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
     <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem></asp:RadioButtonList>
            
    </td></tr><tr><td>
       Food(Required)              	
                
    <asp:RadioButtonList ID="RadioButtonList3" runat="server" RepeatDirection="Horizontal">
    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem></asp:RadioButtonList>
            
    </td></tr><tr><td id="mc" style="text-align:center;">
    
    <asp:Label ID="lblmsg" runat="server" Font-Bold="True" 
	ForeColor="Red" Text=""></asp:Label>
         <br />
    
    <asp:TextBox ID="txtimgcode" runat="server" placeholder="Enter the Captcha Code..."></asp:TextBox>
    <br />
    <asp:Image ID="Image1" runat="server" ImageUrl="./CImage.aspx"/>
    <br /><br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Register" />
    
    </td></tr>
     <tr><td><asp:ValidationSummary ID="ValidationSummary1" runat="server"></asp:ValidationSummary></td></tr>
    </tbody></table>
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
