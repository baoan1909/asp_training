<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai4.aspx.cs" Inherits="Lab_4.bai4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Trang Chính</h1>
            <ul>
                <li><a href="bai2.aspx">Trang 2</a></li>
                <li><a href="bai3.aspx">Trang 3</a></li>
            </ul>
            <hr />
            <table>
                <tr>
                    <td>
                        <iframe src="bai2.aspx" width="100%" height="600px" frameborder="0"></iframe>
                    </td>
                    <td>
                        <iframe src="bai3.aspx" width="600px" height="600px" frameborder="0"></iframe>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
