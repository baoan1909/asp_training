<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai3.aspx.cs" Inherits="Lab_2.bai3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .body{
            width: 500px;
            height: 300px;
        }
        table {
            border-collapse: collapse;
            border: 2px solid  #ee0de7;
            width: 100%;
            
        }
        .title{
            text-align:center;
            color: #ee0de7 ;
            background: #fac5f8;
            font-weight: bold;
            font-size: 20px;
        }
        .row{
            width: 250px;
            text-align:center;
            color: #ee0de7 ;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="body">
                <tr>
                    <td colspan="2" class="title">
                        Xem Album các hoài hoa
                    </td>
                </tr>
                <tr>
                    <td class="row">
                        <asp:ListBox ID="ListBox1" Width="90%" Height="200px" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                            <asp:ListItem Text="Hoa bất tử" Value="hoa_bat_tu" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Hoa cúc" Value="hoa_cuc"></asp:ListItem>
                            <asp:ListItem Text="Hoa hồng" Value="hoa_hong"></asp:ListItem>
                            <asp:ListItem Text="Hoa lan" Value="hoa_lan"></asp:ListItem>
                            <asp:ListItem Text="Hoa ly" Value="hoa_ly"></asp:ListItem>
                            <asp:ListItem Text="Hoa súng" Value="hoa_sung"></asp:ListItem>
                            <asp:ListItem Text="Hoa dâm bụt" Value="hoa_dam_but"></asp:ListItem>
                        </asp:ListBox>
                    </td>
                    <td class="row">
                        <asp:Image ID="Image1" runat="server" Width="90%" Height="200px"/>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
