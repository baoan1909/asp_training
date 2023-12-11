<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai1_b.aspx.cs" Inherits="Lab_2.bai1_b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .body{
            width: 400px;
            height: 400px;
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
            border: 2px solid #008099;
            width: 100%;
            
        }
        .row_1 {
            padding: 5px;
            color: #008099;
        }
        .item_color {
            background: #008099;
            color: #ffffff;
            padding: 5px;
            text-decoration: none;
        }
    </style>
</head>
<body class="body">
    <form id="form1" runat="server">
        <div>
            <table border="0">
                <tr>
                    <td class="row_1">Lợi ích của việc đọc báo
                        <ul>
                            <li>Mở rộng kiến thức</li>
                            <li>Cập nhật thông tin</li>
                            <li>Rèn luyện trí nhớ</li>
                            <li>Giải trí ít tốn kém</li>
                            <li>...</li>
                        </ul>
                    </td>
                    <td>
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/image/bai-1b.jpg" Width="80%" Height="100px"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="item_color">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://tuoitre.vn/" ForeColor="Yellow">Tuổi trẻ</asp:HyperLink>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="item_color">
                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://vnexpress.net/" ForeColor="Yellow">Tin nhanh</asp:HyperLink>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="item_color">
                            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://thanhnien.vn/" ForeColor="Yellow">Thanh niên</asp:HyperLink>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <div class="item_color">
                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://nld.com.vn/" ForeColor="Yellow">Người lao động</asp:HyperLink>
                        </div>
                    </td> 
                </tr>         
            </table>
        </div>
    </form>
</body>
</html>
