<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTextView.ascx.cs" Inherits="WebUserControlsCommunicated.ucTextView" %>

<style type="text/css">
    .style1
    {
        width: 33%;
    }
</style>
<table class="style1">
    <tr>
        <td>
            <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtId" runat="server" Width="66px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtNombre" runat="server" Width="178px"></asp:TextBox>
        </td>
    </tr>
        <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Cargo"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtCargo" runat="server" Width="181px"></asp:TextBox>
        </td>
    </tr>
</table>
