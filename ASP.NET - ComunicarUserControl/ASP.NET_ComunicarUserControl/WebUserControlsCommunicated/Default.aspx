<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebUserControlsCommunicated._Default" %>

<%@ Register src="ucGrid.ascx" tagname="ucGrid" tagprefix="uc1" %>
<%@ Register src="ucTextView.ascx" tagname="ucTextView" tagprefix="uc2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table width= 100%>
            <tr>
                <td>
                    
                    <uc1:ucGrid ID="ucGrid1" runat="server" />
                    
                </td>
            </tr>
            <tr><td></td></tr>
            <tr>
                <td>
                
                    <uc2:ucTextView ID="ucTextView1" runat="server" />
                
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
