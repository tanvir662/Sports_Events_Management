<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Sports_Events_Management.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Welcome to Sports Events Management</h1>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="event_name" HeaderText="event_name" SortExpression="event_name" />
                            <asp:BoundField DataField="event_type" HeaderText="event_type" SortExpression="event_type" />
                            <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Sports_Events_ManagementConnectionString %>" SelectCommand="SELECT [event_name], [event_type], [location], [date] FROM [event_details]"></asp:SqlDataSource>
                </p></center>
        </div>
    </form>
</body>
</html>
