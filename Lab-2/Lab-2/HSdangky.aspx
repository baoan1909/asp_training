<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HSdangky.aspx.cs" Inherits="Lab_2.HSdangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body{
            width: 800px;
        }
        .row{
            display:flex;
            margin-top: 10px;
            margin-left: 10px;
            margin-right: 10px;
        }
        .title {
            width: 150px;
        }
        .btn{
            margin-top: 10px;
            text-align: center;
            margin-bottom: 10px
        }
        .color{
            background: #f9c9ff;
            color: #552761;
            font-weight: bold;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <table border="2"> <!-- Add border attribute for demonstration purposes -->
                <tr class="btn color">
                    <td>Thông tin cá nhân</td>
                    <td>Hồ sơ khách sạn</td>
                </tr>
                <tr>
                    <td>
                        <div class="row">
                            <div class="title">Họ tên khách hàng</div>
                            <div>
                                <asp:TextBox ID="tboHoten" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="title">Email</div>
                            <div>
                                <asp:TextBox ID="tboEmail" runat="server"></asp:TextBox>
                            </div>
                        </div>
                         <div class="row">
                            <div class="title">Giới tính</div>
                            <div>
                                <asp:RadioButton ID="rdoNam" runat="server" text="Nam"/>
                                <asp:RadioButton ID="rdoNu" runat="server" text="Nữ"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="title">Địa chỉ</div>
                            <div>
                                <asp:TextBox ID="tboDiachi" runat="server" Rows="2" Columns="20"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="title">Điện thoại</div>
                            <div>
                                <asp:TextBox ID="tboSDT"  runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="btn" ><asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" /></div>
                    </td>
                    <td>
                        <ul>
                            <li>
                                <asp:Label ID="lblHoten" runat="server" Text="Họ tên khách hàng"></asp:Label>
                            </li>
                            <li>
                                <asp:Label ID="lblGioitinh" runat="server" Text="Giới tính"></asp:Label>
                            </li>
                            <li>
                                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                            </li>
                             <li>
                                <asp:Label ID="lblDiachi" runat="server" Text="Địa chỉ"></asp:Label>
                            </li>
                             <li>
                                <asp:Label ID="lblSDT" runat="server" Text="Số điện thoại"></asp:Label>
                            </li>
                        </ul>
                    </td>
                </tr>
                <!-- Add more rows and cells as needed -->
            </table>
        </div>
    </form>
</body>
</html>
