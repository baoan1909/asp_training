<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1.aspx.cs" Inherits="Lab_4.bai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            border-collapse: collapse;
            border: 2px solid #000000;
        }
        .center{
            text-align: center;
        }
        .row{
            border-top: 2px solid #000000;
            border-bottom: 2px solid #000000;
            border-right: 2px solid #000000;
            width: 200px;
            height: 100px;
            list-style: none;
        }
        .row1{
            border-top: 2px solid #000000;
            border-bottom: 2px solid #000000;
            width: 300px;
            height: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td colspan="2" class="center">
                        ASP.NET
                    </td>
                </tr>
                <tr>
                    <td  class="row">
                        <li><a href="bai2.aspx">Tìm USCLN(a,b)</a></li>
                        <li><a href="bai3.aspx">Đăng ký thông tin</a></li>
                    </td>
                    <td class="row1">
                        ĐÂY LÀ TRANG CHỦ
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="center">
                        Design by DO BAO AN
                    </td> 
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
