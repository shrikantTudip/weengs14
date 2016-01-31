<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="signup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Signup</title>
    <link href="../css/Captcha.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div><center>
    <br /><br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Group leader name"></asp:TextBox><br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Group leader email id"></asp:TextBox><br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="Group leader password" TextMode="Password"></asp:TextBox><br />
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Group leader contact no"></asp:TextBox><br />
        <asp:TextBox ID="TextBox6" runat="server" placeholder="Recipt book given1"></asp:TextBox><br />
        <asp:TextBox ID="TextBox7" runat="server" placeholder="Recipt book given2"></asp:TextBox><br />
        <asp:TextBox ID="TextBox8" runat="server" placeholder="Recipt book given3"></asp:TextBox><br />
        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label><br />
        <asp:Button ID="Button1" runat="server" Text="Signup" onclick="Button1_Click" />
        </center>
    </div>
    </form>
</body>
</html>
