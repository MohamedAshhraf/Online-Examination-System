<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manageExam.aspx.cs" Inherits="Online_Examination_System.manageExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Exam</title>
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
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Questions" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="Questions" HeaderText="Questions" ReadOnly="True" SortExpression="Questions" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Questions] WHERE [Questions] = @Questions" InsertCommand="INSERT INTO [Questions] ([Questions]) VALUES (@Questions)" SelectCommand="SELECT [Questions] FROM [Questions]">
                <DeleteParameters>
                    <asp:Parameter Name="Questions" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Questions" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="examAnswers" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="examAnswers" HeaderText="examAnswers" ReadOnly="True" SortExpression="examAnswers" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [examAnswers] WHERE [examAnswers] = @examAnswers" InsertCommand="INSERT INTO [examAnswers] ([examAnswers]) VALUES (@examAnswers)" SelectCommand="SELECT [examAnswers] FROM [examAnswers]">
            <DeleteParameters>
                <asp:Parameter Name="examAnswers" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="examAnswers" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
