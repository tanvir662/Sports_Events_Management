<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Sports_Events_Management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>login</h1></center>
    <center><p>Please fill in this form to Login.</p></center>
    <hr>

    <label for="email"><b>Email</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
      <asp:TextBox ID="textentermail" placeholder="enter mail" runat="server"></asp:TextBox>
<br>
    <label for="psw"><b>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></label>
            &nbsp;<asp:TextBox ID="textpassword" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
   <hr>
            <asp:Button ID="btnlogin" runat="server" Text="LOGIN" OnClick="btnlogin_Click" />
          
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
