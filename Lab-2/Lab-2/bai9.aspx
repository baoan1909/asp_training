<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai9.aspx.cs" Inherits="Lab_2.bai9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .title{
            background: #990066;
            text-align: center;
            height: 40px;
        }
        table{
            width: 500px;
            border-collapse:collapse;
            border:2px solid #990066;
        }
        .margin-left{
            margin-left: 30px;
        }
        table tr td{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td class="title">
                        <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="White" OnClick="LinkButton1_Click">Upload tập tin</asp:LinkButton>
                        <asp:LinkButton ID="LinkButton2" runat="server" CssClass="margin-left"  ForeColor="White" OnClick="LinkButton2_Click">Xem các tập tin được upload</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <div>
                                    <asp:FileUpload ID="FileUpload1" runat="server" Width="90%"/>
                                </div>
                                <div>
                                    <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
                                </div>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="2" Columns="20" Width="90%"></asp:TextBox>
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
