<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Lab_1.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Tìm số lớn nhất và hiển thị ra trang web.</h1>
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
                <asp:Label ID="Soc" runat="server" Text="Nhập số nguyên c "></asp:Label>
                <asp:TextBox ID="tboSoc" runat="server" TextMode="Number"></asp:TextBox>
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
