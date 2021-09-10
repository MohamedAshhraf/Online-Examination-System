<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageAccountList.aspx.cs" Inherits="Online_Examination_System.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Account List</title>
    <style>
        table {
            border-collapse: collapse;
            margin: auto;
            margin-top: 100px;
        }
        table,th, td {
            border: none;
            border-bottom: 1px solid #b6b6b6;
        }
        td {
            padding: 20px;
            text-align: center;
            font-size: 115%;
        }

        tr:hover {background-color: #f5f5f5;}

        a {
            text-decoration: none;
            display: block;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Username" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Username" HeaderText="Username" ReadOnly="True" SortExpression="Username" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Lname" HeaderText="Lname" SortExpression="Lname" />
                    <asp:BoundField DataField="Sex" HeaderText="Sex" SortExpression="Sex" />
                    <asp:BoundField DataField="Fname" HeaderText="Fname" SortExpression="Fname" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Username] = @Username" InsertCommand="INSERT INTO [Users] ([Username], [Phone], [Email], [Lname], [Sex], [Fname]) VALUES (@Username, @Phone, @Email, @Lname, @Sex, @Fname)" SelectCommand="SELECT [Username], [Phone], [Email], [Lname], [Sex], [Fname] FROM [Users]" UpdateCommand="UPDATE [Users] SET [Phone] = @Phone, [Email] = @Email, [Lname] = @Lname, [Sex] = @Sex, [Fname] = @Fname WHERE [Username] = @Username">
                <DeleteParameters>
                    <asp:Parameter Name="Username" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Username" Type="String" />
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Fname" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Phone" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Lname" Type="String" />
                    <asp:Parameter Name="Sex" Type="String" />
                    <asp:Parameter Name="Fname" Type="String" />
                    <asp:Parameter Name="Username" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
