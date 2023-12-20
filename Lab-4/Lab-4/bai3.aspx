<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai3.aspx.cs" Inherits="Lab_4.bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .title{
            background: #1199fc;
            text-align: center;
            color: white;
            font-weight: bold;
            font-size: 20px;
            height: 40px;
            border: 4px solid #ffffff;
        }
        table{
            background: #15c49f;
        }
        table tr td{
            border: 1px dashed #ffffff;
            width: 150px;
        }
        .text{
            color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="3" class="title">
                        ĐĂNG KÝ PHÒNG
                    </td>
                </tr>
                <tr> 
                    <td class="text">
                        Họ tên
                    </td>
                    <td>
                        <asp:TextBox ID="txtHoten" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvHoten" runat="server" ControlToValidate="txtHoten" ErrorMessage="Nhập họ tên" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text">
                        Tên tài khoản
                    </td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUser" ErrorMessage="Nhập tên tài khoản" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr>
                    <td class="text">
                        Mật khẩu
                    </td>
                    <td>
                        <asp:TextBox ID="txtMatkhau" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvMatkhau" runat="server" ControlToValidate="txtMatkhau" ErrorMessage="Nhập mật khẩu" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text">
                       Nhập lại mật khẩu
                    </td>
                    <td>
                        <asp:TextBox ID="txtNLMatkhau" TextMode="Password" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvNLMatkhau" runat="server" ControlToValidate="txtNLMatkhau" ErrorMessage="Nhập mật khẩu lần 2" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:CompareValidator ID="cmvMatkhau" runat="server" ControlToValidate="txtNLMatkhau" ControlToCompare="txtMatkhau" ErrorMessage="Mật khẩu không khớp" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                 <tr>
                    <td class="text">
                        Ngày sinh
                    </td>
                    <td>
                        <asp:TextBox ID="txtNgaysinh" runat="server" Width="45%"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cmvNgaysinh" runat="server" Type="Date" Operator="DataTypeCheck" ControlToValidate="txtNgaysinh" ErrorMessage="Nhập định dạng ngày sinh" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text">
                       Email
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" ErrorMessage="Nhập đỉa chỉ email" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="text">
                        Địa chỉ
                    </td>
                    <td>
                        <asp:TextBox ID="txtDiachi" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvDiachi" runat="server" ControlToValidate="txtDiachi" ErrorMessage="Nhập địa chỉ" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                
                <tr>
                    <td class="text">
                        Sở thích
                    </td>
                    <td>
                        <asp:TextBox ID="txtSothich" runat="server"></asp:TextBox>
                    </td>
                    <td>
                         <asp:RequiredFieldValidator ID="rfvSothich" runat="server" ControlToValidate="txtSothich" ErrorMessage="Nhập sở thích" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <asp:Button ID="btnDangky" runat="server" Text="Đăng ký" OnClick="btnDangky_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="text-align:center;">
                        <asp:Label ID="lblThongbao" runat="server" Text="Thông báo" ForeColor="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:ValidationSummary ID="vsTomtatloi" runat="server" ForeColor="Red"/>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

