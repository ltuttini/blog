<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="SumarColumnasGridView.Ej2.ListaProductos" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
   
    <script src="../script/jquery-1.7.2.min.js" type="text/javascript"></script>
    
    <script language="javascript" type="text/javascript">

        $(document).ready(function() {

            $("#<%=GridView1.ClientID%> [id*='txtCantidad']").change(function() {

                var tr = $(this).parent().parent();
                var precio = $("td:eq(1)", tr).html();

                $("td:eq(3) span", tr).html($(this).val() * precio);

                CalcularTotal();

            });

        });

        //calculo total grid paginado
        function CalcularTotal() {

            var total = 0;
            $("#<%=GridView1.ClientID%> [id*='lblPrecio']").each(function() {

                var coltotal = parseFloat($(this).html());

                if (!isNaN(coltotal)) {
                    total += coltotal;
                }

            });

            $("#<%=GridView1.ClientID%> [id*='lblTotal']").html(total);

        }
                
//        calculo total sin paginado             
//        function CalcularTotal() {

//            var total = 0;
//            $('#<%=GridView1.ClientID%> tr:not(:last)').each(function() {
//            
//                var coltotal = parseFloat($("td:eq(3) span", this).html());
//                
//                if (!isNaN(coltotal)) {
//                    total += coltotal;
//                }

//            });

//            $('#<%=GridView1.ClientID%> tr:last td:eq(3) span').html(total);
//        }
        
    </script>
    
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
             onpageindexchanging="GridView1_PageIndexChanging" 
            ShowFooter="True"  AllowPaging="True">
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
                        <asp:Label ID="lblPrecio" runat="server" ></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                      <asp:Label ID="lblTotal" runat="server" ></asp:Label>
                  </FooterTemplate>
                </asp:TemplateField>
            </Columns>
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#666666" />
        </asp:GridView>
        
    </div>
    </form>
</body>
</html>
