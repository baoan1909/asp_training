<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai2.aspx.cs" Inherits="Lab_4.bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table> 
                <tr>
                    <td>
                       &nbsp;
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label">TÌM UCLN CỦA A VÀ B</asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtSoa" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtSob" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btnUCLN" runat="server" Text="Tìm UCLN" OnClick="btnUCLN_Click" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lblKetqua" runat="server" Text=""></asp:Label>
                    </td> 
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
