<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alta.aspx.cs" Inherits="_1_parcial.alta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Mi parcial ASP.NET</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
             
        </div>
    
    
         
    

    </form>
      <div class="container body-content">
         
            <footer>

                <p>&copy; <%: DateTime.Now.Year %> - Walter Reverdito</p>
                <asp:HyperLink runat="server" NavigateUrl="Default.aspx" >Volver</asp:HyperLink>
            </footer>
        </div>
</body>

</html>
