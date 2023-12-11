<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai6.aspx.cs" Inherits="Lab_2.bai6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            width: 400px;
           border-collapse: collapse;
           border: 2px solid #010817;
        }
        .title{
            background: #3266cc;
            text-align: center;
            font-size: 20px;
            font-weight:bold;
            height: 40px;
            color: white;
        }
        .footer{
            text-align:center;
            height: 40px;
            border-top: 2px solid #010817;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="title">
                        Hệ thống bài tập các điều khiển cơ bản
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:BulletedList ID="BulletedList1" runat="server" DisplayMode="HyperLink" OnClick="BulletedList1_Click" >
                            <asp:ListItem Text="Bài 3.1: Trang đọc báo" Value="~/bai1_b.aspx"></asp:ListItem>
                            <asp:ListItem Text="Bài 3.2: Trang câu chào" Value="~/bai2.aspx"></asp:ListItem>
                            <asp:ListItem Text="Bài 3.3: Album các loài hoa" Value="~/bai3.aspx"></asp:ListItem>
                            <asp:ListItem Text="Bài 3.4: Trang đơn đặt hàng" Value="~/bai5.aspx"></asp:ListItem>
                            <asp:ListItem Text="Bài 3.5: Trang phiếu ý kiến người tiêu dùng" Value="~/bai4.aspx"></asp:ListItem>
                        </asp:BulletedList>
                    </td>
                </tr>
                <tr>
                    <td class="footer">
                        Đổi Bullet 
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="60%" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Text="Số" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Ký tự thường" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Ký tự in" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Hình tròn" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Hình vuông" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
