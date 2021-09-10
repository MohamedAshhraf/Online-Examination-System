<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="examSchedule.aspx.cs" Inherits="Online_Examination_System.examSchedule" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Exam Schedule</title>
    <style type="text/css">
        #Label6 {
            font-size: 250%;
        }
        #Label1 {
            font-size: 150%;
            display: block;
            margin-bottom: 30px;
        }
        table,th, td {
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
        }

        .auto-style1 {
            width: 30%;
            border-collapse: collapse;
            margin: auto;
        }
        .auto-style2 {
            width: 1244px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
            <asp:Label ID="Label6" runat="server" Text="WELCOME TO EXAM SCHEDULE" Font-Bold="True" ForeColor="Black"></asp:Label>
                </center>
        </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <center>
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Black" Text="Subject"></asp:Label>
                    </center>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Mathematics"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/mathematicsExam.html">Start</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Internet Technology"></asp:Label>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/internetTechnologyExam.aspx">Start</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="DataBase-1"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Font-Size="Small" ForeColor="Black" Text="Not availabe yet"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Computer Programming"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Finished"></asp:Label>
                    .</td>
            </tr>
        </table>
    </form>
</body>
</html>
