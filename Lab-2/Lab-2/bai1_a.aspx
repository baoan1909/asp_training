<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1_a.aspx.cs" Inherits="Lab_2.HSdangky" %>

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
        .col{
            width: 300px;
        }
        table {
            border-collapse: collapse;
            border: 2px solid #5930ac;
        }
        table, th, td {
            border: 2px solid #5930ac;
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
        /* CSS cho các <li> không rỗng */
        ul li:not(:empty) {
            list-style-type: none;
            margin-top:10px/* Thay đổi kiểu gạch đầu dòng nếu cần */
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
                                <asp:RadioButton ID="rdoNam" runat="server" text="Nam" GroupName="gioiTinh"/>
                                <asp:RadioButton ID="rdoNu" runat="server" text="Nữ" GroupName="gioiTinh"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="title">Địa chỉ</div>
                            <div>
                                <asp:TextBox ID="tboDiachi" runat="server" TextMode="MultiLine" Rows="2" Columns="20"></asp:TextBox>
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
                    <td class="col">
                         <asp:BulletedList ID="blt_result" runat="server" BulletStyle="Disc" DisplayMode="Text">
                        </asp:BulletedList>
                    </td>
                </tr>
                <!-- Add more rows and cells as needed -->
            </table>
        </div>
    </form>
</body>
</html>
