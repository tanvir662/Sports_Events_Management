<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reg.aspx.cs" Inherits="Sports_Events_Management.reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
    <center><h1>Register</h1></center>
    <center><p>Please fill in this form to create an account.</p></center>
    <hr>

    <label for="email"><b>Email</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
      <asp:TextBox ID="txtentermail" placeholder="enter mail" runat="server"></asp:TextBox>
<br>
    <label for="psw"><b>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </b></label>
            &nbsp;<asp:TextBox ID="txtpassword" placeholder="password" TextMode="Password" runat="server"></asp:TextBox>
    <br>
    <label for="psw-repeat"><b>Repeat Password</b></label>&nbsp;&nbsp;
            <asp:TextBox ID="repassword" placeholder="re-password" TextMode="Password" runat="server"></asp:TextBox>
    <hr>
    

            <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
  </div>
    </form>
</body>
</html>
