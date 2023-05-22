<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modificacion.aspx.cs" Inherits="_1_parcial.modificacion" %>

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
           <a class="navbar-brand" runat="server" href="~/">Parcial TP4: Modificacion</a>
       </div>
    </nav>
    <form id="form1" runat="server">
        <div style="margin:20px 80px 100px 70px;">
            <asp:Label ID="Label1" runat="server" Text="Ingrese Codigo de Servicio: "></asp:Label>
            <asp:TextBox ID="codigo" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
            <asp:Button ID="consult" runat="server" Text="Consultar" onclick="consultar" />
            <br /><br />
            
            <asp:Label ID="mensaje" runat="server"></asp:Label>
            <br /><br />
            
            <asp:Label ID="Label2" runat="server" Text="Descricion Servicio:"></asp:Label>
            <asp:TextBox ID="DescServ" runat="server"></asp:TextBox> &nbsp;&nbsp;

            <asp:Label ID="Label3" runat="server" Text="Tipo: "></asp:Label>
            <asp:Label ID="DesTipo" runat="server"></asp:Label>
            
            <asp:DropDownList ID="DropTipo" runat="server" 
                DataSourceID="DataTipo" 
                DataTextField="desc_tipo_serv" 
                DataValueField="cod_tipo_serv">
            </asp:DropDownList>
            &nbsp;

            <asp:Label ID="Label4" runat="server" Text="Rubro: "></asp:Label>
            <asp:Label ID="DesRubro" runat="server"></asp:Label>
            
            <asp:DropDownList ID="DropRubro" runat="server" DataSourceID="DataSourceRubro" DataTextField="desc_rubro" DataValueField="cod_rubro">
            </asp:DropDownList>
&nbsp;</div>
            <asp:SqlDataSource ID="ConsultaDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" SelectCommand="SELECT SERVICIOS.cod_servicio, SERVICIOS.desc_servicio, RUBROS.desc_rubro, TIPOS_SERVICIO.desc_tipo_serv FROM SERVICIOS LEFT OUTER JOIN RUBROS ON SERVICIOS.rubro = RUBROS.cod_rubro LEFT OUTER JOIN TIPOS_SERVICIO ON SERVICIOS.tipo_servicio = TIPOS_SERVICIO.cod_tipo_serv WHERE (SERVICIOS.cod_servicio = @codigo)">
                <SelectParameters>
                    <asp:Parameter Name="codigo" />
                </SelectParameters>
            </asp:SqlDataSource>


            <asp:SqlDataSource ID="DataTipo" runat="server" ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" SelectCommand="SELECT * FROM [TIPOS_SERVICIO]"></asp:SqlDataSource>


        <asp:SqlDataSource ID="DataSourceRubro" runat="server" ConnectionString="<%$ ConnectionStrings:parcialConnectionString %>" SelectCommand="SELECT * FROM [RUBROS]"></asp:SqlDataSource>
    </form>
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
