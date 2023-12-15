<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai2.aspx.cs" Inherits="Lab_3.bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function fnKiemTraSoChan(source, args){
            args.IsValid = (args.Value% 2 == 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Số chẵn
                    </td>
                    <td>
                        <asp:TextBox ID="txtSochan" runat="server" TextMode="Number"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CustomValidator ID="valSochan" runat="server" ControlToValidate="txtSochan" ClientValidationFunction="fnKiemTraSoChan" ErrorMessage="Vui lòng nhập số chẵn" Display="Dynamic" ValidateEmptyText="true"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mã bảo mật
                    </td>
                    <td>
                        <asp:TextBox ID="txtMaBM" runat="server"></asp:TextBox><asp:Label ID="lblMaBM" Font-Bold="true" Font-Size="Larger" ForeColor="Red" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:CustomValidator ID="valMaBM" runat="server" ErrorMessage="Nhập không đúng mã bảo mật!" ValidateEmptyText="true" Display="Dynamic" ControlToValidate="txtMaBM" OnServerValidate="valMaBM_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                        <td><asp:Button ID="btnKiemtra" runat="server" Text="Kiểm tra" OnClick="btnKiemtra_Click" /></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
    
</html>
