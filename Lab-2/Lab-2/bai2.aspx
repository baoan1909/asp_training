<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai2.aspx.cs" Inherits="Lab_2.bai2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .body{
            width: 400px;
            height: 100px;
        }
        .row{
            display:flex;
            margin-top: 10px;
            margin-bottom: 10px
        }
        .line{
            border-bottom: 1px dashed #0a6f08;
        }
         table {
            border-collapse: collapse;
            border: 2px solid #0a6f08;
            width: 100%;
            
        }
         .color{
             color: #0a6f08;
             text-align:center;
         }
         .color1{
             color: #064a04;
             font-weight:bold;
             font-style: italic;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="body">
                <tr class="row line">
                    <th class="color" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Nhập họ tên"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return confirm('Bạn có đồng ý thay đổi câu chào?');" OnClick="LinkButtonConfirm_Click" ForeColor="#0a6f08">Thay đổi câu chào</asp:LinkButton>
                    </th>
                </tr>
                <tr class="color">
                    <td>
                        <asp:Label ID="Label2" runat="server"></asp:Label> <span class="color1"><asp:Label ID="Label3" runat="server"></asp:Label>  </span>
                        <br/>
                        <asp:Label ID="Label4" runat="server"></asp:Label>
                        <span class="color1"><asp:Label ID="Label5" runat="server"></asp:Label></span>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
