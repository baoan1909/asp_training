<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai10.aspx.cs" Inherits="Lab_2.bai10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        table{
            border-collapse:collapse;
            border:2px solid #c00000;
        }
        .title{
            background: #fecc33;
            color: #c00000;
            text-align:center;
            font-weight:bold;
            font-size: 20px;
            height: 40px;
        }
        .line{
            border-bottom: 2px dashed #c00000;
            border-top: 2px dashed #c00000;
            text-align: center;
            font-weight: bold;
            color: #f37070;
        }
        .line2{
            border-right: 2px solid #c00000;
            border-left: 2px solid #c00000;
        }
        .row2{
            height: 200px;
        }
        .footer{
            height: 40px;
            background: #fd6e08;
            text-align: center;
        }
        .bold{
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="title" colspan="3">
                        Chọn những sản phẩm bạn thích
                    </td>
                </tr>
                <tr>
                    <td>
                        <div class="line">
                            Danh sách sản phẩm
                        </div>
                        <div class="row2">
                            <div> <asp:CheckBox ID="CheckBox1" runat="server" Text="Kẹo trái cậy thập cẩm" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>
                           <div> <asp:CheckBox ID="CheckBox2" runat="server" Text="Kẹo nho" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>
                           <div><asp:CheckBox ID="CheckBox3" runat="server" Text="Kẹo táo" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>
                            <div> <asp:CheckBox ID="CheckBox4" runat="server" Text="Socola táo" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>
                           <div> <asp:CheckBox ID="CheckBox5" runat="server" Text="Kẹo socola đậu phộng" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>
                           <div><asp:CheckBox ID="CheckBox6" runat="server" Text="Kẹo coffee sữa" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>
                           <div><asp:CheckBox ID="CheckBox7" runat="server" Text="Socola thập cẩm có nhân" AutoPostBack="true" OnCheckedChanged="CheckBox_CheckedChanged"/></div>  
                        </div>
                    </td>
                    <td class="line2">
                        <div class="line" style="width: 150px">
                            Số lượng
                        </div>
                        <div class="row2" style="text-align:center">
                            <asp:Label ID="Label1" runat="server" CssClass="bold"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text=" sản phẩm"></asp:Label>
                        </div>
                    </td>
                    <td>
                        <div class="line">
                            Sản phẩm được chọn
                        </div>
                        <div class="row2">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="8" Columns="20"></asp:TextBox>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="footer" colspan="3">
                        <asp:Button ID="Button1" runat="server" Text="Bắt đầu chọn lại" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
