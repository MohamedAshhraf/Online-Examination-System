<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="internetTechnologyExam.aspx.cs" Inherits="Online_Examination_System.internetTechnologyExam" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Intrnet Technology</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 1004px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 1004px;
            height: 38px;
        }
        .auto-style5 {
            height: 38px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Match The Following Questions With Their Correct Answers:"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Questions" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="Questions" HeaderText="Questions" ReadOnly="True" SortExpression="Questions" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Questions] FROM [Questions]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CssClass="auto-style3" DataKeyNames="examAnswers" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="examAnswers" HeaderText="examAnswers" ReadOnly="True" SortExpression="examAnswers" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [examAnswers] FROM [examAnswers]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:FileUpload ID="fupExam" runat="server" Font-Bold="True" ForeColor="Black" Width="585px" Height="84px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="21px" Text="Finish" Width="140px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
