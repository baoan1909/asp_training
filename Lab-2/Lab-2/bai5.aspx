<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai5.aspx.cs" Inherits="Lab_2.bai5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .title{
            background: #ccfe9a;
            color: #2d3d1d;
            font-weight:bold;
            text-align:center;
            border-bottom: 2px solid #2d3d1d;
        }
        table{
            width: 500px;
            border-collapse:collapse;
            border: 2px solid #2d3d1d;
        }
        table tr td{
            width: 250px;
        }
        .text{
            text-align:center;
            height:30px
        }
        .background{
            background:#ccfe9a;
            color: #2d3d1d;
        }
        .border-top{
            border-top: 2px solid #2d3d1d;
        }
        .border-right{
            border-right: 2px solid #2d3d1d;
            text-align:center;
        }
        .margin-top{
            margin-top: 5px;
        }
        .table2{
            color: #ff0019;
            border-collapse:collapse;
            border: 2px solid #ff0019;
            width: 300px;
        }
        .form_2{
            display: flex;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="form_2">
            <table>
                <tr class="title">
                    <td colspan="2">ĐƠN DẶT HÀNG</td>
                </tr>
                <tr>
                    <td>
                        Khách hàng:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Địa chỉ:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mã số thuế:
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr class="border-top">
                    <td class="border-right">Chọn các loại bánh sau:</td>
                    <td>Danh sách bánh được đặt</td>
                </tr>
                <tr>
                    <td class="border-right">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="80%">
                            <asp:ListItem Text="Hamburger" Selected="True" Value="1"/>
                            <asp:ListItem Text="Bánh bò nướng" Value="2" />
                            <asp:ListItem Text="Pates chauds" Value="3" />
                            <asp:ListItem Text="Bánh Croissant bơ" Value="4" />
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:ListBox ID="ListBox1" runat="server" Width="80%"></asp:ListBox>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/thung_rac.jpg" Height="20px" Width="20px"/>
                    </td>
                </tr>
                <tr>
                    <td class="border-right ">
                        Số lượng: <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" Width="40%"></asp:TextBox> cái <br />
                        <asp:Button ID="Button1" CssClass="margin-top" runat="server" Text=">" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="border-top text"><asp:Button ID="Button2" CssClass="background" runat="server" Text="In đơn đặt hàng" /></td>
                </tr>
            </table>
            <div style="margin-left: 30px; color: #ff0019">
                <h3>HÓA ĐƠN ĐẶT HÀNG</h3>
            <table class="table2">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Khách hàng: "></asp:Label>
                        <asp:Label ID="Label2" runat="server" Text="Đỗ Bảo Ân"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Địa chỉ: "></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="25, Bùi Xuân Phái, Tây Thạnh"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                       <asp:Label ID="Label5" runat="server" Text="Mã số thuế: "></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="0123456789"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Đặt các loại bánh sau"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="TenBanh" />
                                    <asp:BoundField DataField="SoLuong" />
                                </Columns>
                         </asp:GridView>
                    </td>
                </tr>
            </table>
            </div>
        </div>
    </form>
</body>
</html>
