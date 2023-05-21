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
        <nav class="navbar navbar-expand-sm navbar-toggleable-sm navbar-dark bg-dark">
       <div class="container">
           <a class="navbar-brand" runat="server" href="~/">Parcial TP4: Alta</a>
       </div>
    </nav>

    <form id="form1" runat="server">
        <div class="container">
            <center>
            <br /><br />
            <asp:Label ID="Label1" runat="server" Text="Descripcion el servicio:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Desc_Serv" runat="server"></asp:TextBox>&nbsp;&nbsp;
            <asp:Label ID="Id_Rubro" runat="server" Text="Rubro: "></asp:Label>
            <asp:DropDownList ID="DropRubro" runat="server" 
                DataSourceID="SqlDataRubro" 
                DataTextField="desc_rubro" 
                DataValueField="cod_rubro">
            </asp:DropDownList> &nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="Tipo: "></asp:Label>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropTipo" runat="server" 
                DataSourceID="SqlDataTipo" 
                DataTextField="desc_tipo_serv" 
                DataValueField="cod_tipo_serv">
            </asp:DropDownList>
             <br /><br />
            
           <asp:Button ID="Button1" runat="server" Text="Dar de Alta" onclick="darDeAlta" /> </center>
             <br />
            <asp:Label ID="salida" runat="server"></asp:Label>
            <br />
        </div>
    
    
         
    

        <asp:SqlDataSource ID="SqlDataRubro" runat="server" 
            ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" 
            SelectCommand="SELECT * FROM [RUBROS] ORDER BY [desc_rubro]">
        </asp:SqlDataSource>
    
    
         
    

        <asp:SqlDataSource ID="SqlDataTipo" runat="server" 
            ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" 
            SelectCommand="SELECT * FROM [TIPOS_SERVICIO]">
        </asp:SqlDataSource>
    
        <asp:SqlDataSource ID="SqlDataAlta" runat="server" 
            ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" 
            InsertCommand="INSERT INTO SERVICIOS(desc_servicio, tipo_servicio, rubro) VALUES (@servicio, @tipo, @rubro)" 
            SelectCommand="SELECT * FROM [SERVICIOS]">
            <InsertParameters>
                <asp:Parameter Name="servicio" />
                <asp:Parameter Name="tipo" />
                <asp:Parameter Name="rubro" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    
         
    

    </form>
      <div class="container body-content">
         
         
        </div>
    <div class="container body-content">
         
            <footer>
                <hr />
                <p>&copy; <%: DateTime.Now.Year %>- Walter Reverdito
                </p>
                
                <a class="navbar-brand" runat="server" href="~/">Regresar</a>
            </footer>
        </div>
</body>

</html>
