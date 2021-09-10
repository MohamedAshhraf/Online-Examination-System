<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="Online_Examination_System.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Home</title>
    

    <style type="text/css">
        #Label1 {
            font-size: 250%;
            margin-top: 20px;
            margin-bottom: 50px;
            display: block;
        }
        .auto-style1 {
            width: 50%;
            margin: auto;
            font-size: 120%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="WELCOME ADMIN"></asp:Label>
        </center>
        <br />
        <br />
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <center>
                    <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" NavigateUrl="~/manageAccountList.aspx">Manage Accounts List</asp:HyperLink>
                        </center>
                </td>
                <td class="auto-style4">
                    <center>
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" NavigateUrl="~/createExam.html">Create Exam</asp:HyperLink>
                        </center>
                </td>
                <td class="auto-style5">
                    <center>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" NavigateUrl="~/manageExam.aspx">Manage Exam</asp:HyperLink>
                        </center>
                </td>
                <td>
                    <center>
                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" NavigateUrl="~/signin.aspx">Log Out</asp:HyperLink>
                        </center>
                    </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
