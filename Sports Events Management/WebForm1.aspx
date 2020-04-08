<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Sports_Events_Management.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Welcome to Sports Events Management</h1

        </div>
                <p>&nbsp;</p

        </div>
        </div>
     <center>   <asp:Button ID="Btnaddevent" runat="server" Text="ADD EVENT" OnClick="Btnaddevent_Click" /></center>
        <br />

      <center>  <asp:Button ID="btneventdetails" runat="server" Text="VIEW EVENT DETAILS" OnClick="btneventdetails_Click" /></center>
        &nbsp;&nbsp;&nbsp;
        <br />

        <center><asp:Button ID="btnstudentdetails" runat="server" Text="VIEW STUDENT DETAILS" OnClick="btnstudentdetails_Click" /></center>


    </form>
</body>
</html>
