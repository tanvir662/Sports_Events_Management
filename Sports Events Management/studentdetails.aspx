<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentdetails.aspx.cs" Inherits="Sports_Events_Management.studentdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>Welcome to Sports Events Management</h1>
                <p>&nbsp;</p>
                <p>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="sportsname" HeaderText="sportsname" SortExpression="sportsname" />
                            <asp:BoundField DataField="student_id" HeaderText="student_id" SortExpression="student_id" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
                            <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Sports_Events_ManagementConnectionString %>" SelectCommand="SELECT [sportsname], [student_id], [email], [mobile], [dob] FROM [student_reg]"></asp:SqlDataSource>
                </p></center>


        </div>
    </form>
</body>
</html>
