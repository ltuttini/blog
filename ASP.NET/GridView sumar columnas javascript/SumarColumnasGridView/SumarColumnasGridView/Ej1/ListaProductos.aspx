<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="SumarColumnasGridView.Ej1.ListaProductos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
   
    <script src="../script/jquery-1.7.2.min.js" type="text/javascript"></script>
    
    <script language="javascript" type="text/javascript">

        $(document).ready(function() {

            //$('#<%=GridView1.ClientID%> .cantidad').change(function() {
            //$('td:eq(2) :text', '#<%=GridView1.ClientID%> tr').change(function() {
            $("#<%=GridView1.ClientID%> [id*='txtCantidad']").change(function() {
            
                var tr = $(this).parent().parent();
                var precio = $("td:eq(1)", tr).html();

                $("td:eq(3) span", tr).html($(this).val() * precio);

            });

        });
        
    </script>
    
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
            AllowPaging="True" onpageindexchanging="GridView1_PageIndexChanging" >
            <FooterStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="ProductName" HeaderText="Descripcion" />
                <asp:BoundField DataField="UnitPrice" HeaderText="Precio Unitario" />
                <asp:TemplateField HeaderText="Cantidad Pedido">
                    <ItemTemplate>
                        <asp:TextBox ID="txtCantidad" runat="server" Width="80px" class="cantidad"></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Precio">
                    <ItemTemplate>
                        <asp:Label ID="txtPrecio" runat="server" ></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
        </asp:GridView>
        
    </div>
    </form>
</body>
</html>
