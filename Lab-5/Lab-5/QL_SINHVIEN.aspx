<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QL_SINHVIEN.aspx.cs" Inherits="Lab_5.QL_SINHVIEN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .body{
            text-align: center;
            width: 1000px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="body">
                    <table>
                    <tr>
                        <td>
                            BÀI KIỂM TRA - ĐỖ BẢO ÂN - CCN04.6B
                        </td>
                    </tr>
                    <tr>
                        <td>
                            DANH SÁCH MÔN HỌC
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mã môn học: <asp:TextBox ID="txtMamonhoc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tên môn học: <asp:TextBox ID="txtTenmonhoc" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:GridView ID="gdvMonhoc" class="body" runat="server" AutoGenerateColumns="False" CellPadding="4"  ForeColor="#333333" GridLines="None" Width="760px" PageSize="3" HorizontalAlign="Center" BackColor="White" OnPageIndexChanging="gdvMonhoc_PageIndexChanging" OnSelectedIndexChanged="gdvMonhoc_SelectedIndexChanged">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="MaMH" HeaderText="Mã môn học" />
                                    <asp:BoundField DataField="TenMH" HeaderText="Tên môn học" />
                                    <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                                </Columns>
                                <EditRowStyle BackColor="#2461BF" />
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#0066CC" />
                                <RowStyle BackColor="#EFF3FB" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                <SortedDescendingHeaderStyle BackColor="#4870BE" />
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLoi" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" /> 
                            <asp:Button ID="btnLuu" runat="server" Text="Lưu" OnClick="btnLuu_Click" />
                            <asp:Button ID="btnXoa" runat="server" Text="Xóa" OnClick="btnXoa_Click" />
                            <asp:Button ID="btnSua" runat="server" Text="Sửa" OnClick="btnSua_Click" />
                        </td>
                    </tr>
                    
                </table>
            </div>
        </div>
    </form>
</body>
</html>
