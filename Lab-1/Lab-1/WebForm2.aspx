<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Lab_1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tính tổng, hiệu và thương của 2 số.</h1>
            <div>
                <asp:Label ID="Soa" runat="server" Text="Nhập số nguyên a "></asp:Label>
                <asp:TextBox ID="tboSoa" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <br/>
            <div>
                <asp:Label ID="Sob" runat="server" Text="Nhập số nguyên b "></asp:Label>
                <asp:TextBox ID="tboSob" runat="server" TextMode="Number"></asp:TextBox>
            </div>
            <br/>
            <div>
                <asp:Button ID="btnTinh" runat="server" Text="=" style="width:160px;" OnClick="btnTinh_Click" />
            </div>
            <br/>
            <div>
                <asp:Label ID="lblKetqua" runat="server" Text="kết quả"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
