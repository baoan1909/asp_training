<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai4.aspx.cs" Inherits="Lab_2.bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table {
            border-collapse: collapse;
            border: 2px solid #9a0000;
            width: 300px;
            height: 200px
        }
        .title{
            background: #fffbe6;
            color: #9a0000;
            text-align: center;
            height: 30px;
        }
        .col {
            background: #9a0000;
            color: #fffbe6;

        }
        .padding {
            padding: 5px;
            border-left:3px solid #ffffff;
        }
        .row{
            color: #9a0000;
            border-top: 2px solid #9a0000;
            height: 100px;
        }
        .label{
            color: #781f1f;
            font-weight:bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="title" colspan="2">
                        PHIẾU LẤY Ý KIẾN NGƯỜI TIÊU DÙNG CỦA HÃNG ABX
                    </td>
                </tr>
                <tr >
                    <td class="col">
                        Bạn hãy chọn các sản phẩm sau:
                    </td>
                    <td class="col padding">
                        Các tiêu chuẩn bình chọn
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true" BorderColor="#ffffff" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                            <asp:ListItem Text="Máy giặt" Value="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Tivi" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Tủ lạnh" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Đầu đĩa DVD" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Lò vi sóng" Value="5"></asp:ListItem>
                            <asp:ListItem Text="Nồi cơm điện" Value="6"></asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" BorderColor="#ffffff" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                            <asp:ListItem Text="Nội dung"></asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td class="row" colspan="2"> 
                        <asp:Button ID="Button1" runat="server" Text="Xem kết quả bình chọn" OnClick="Button1_Click" />
                        <asp:Label ID="Label1" runat="server" Text="Bạn đang chọn sản phẩm: "></asp:Label>
                        <span class="label"><asp:Label ID="Label2" runat="server"></asp:Label></span>
                        <asp:BulletedList ID="BulletedList1" runat="server" BulletStyle="Numbered" DisplayMode="Text">

                        </asp:BulletedList>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
