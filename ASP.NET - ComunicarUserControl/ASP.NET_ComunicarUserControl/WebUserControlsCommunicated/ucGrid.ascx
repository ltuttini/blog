<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucGrid.ascx.cs" Inherits="WebUserControlsCommunicated.ucGrid" %>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    CellPadding="4" ForeColor="#333333" GridLines="None" 
    onselectedindexchanged="GridView1_SelectedIndexChanged">
    <RowStyle BackColor="#EFF3FB" />
    <Columns>
        <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="ID" />
        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="Cargo" HeaderText="Cargo" />
    </Columns>
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#2461BF" />
    <AlternatingRowStyle BackColor="White" />
</asp:GridView>
